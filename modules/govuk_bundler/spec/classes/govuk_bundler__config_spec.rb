require_relative '../../../../spec_helper'

describe 'govuk_bundler::config', :type => :class do

  it { is_expected.to compile }

  it { is_expected.to compile.with_all_deps }

  it { is_expected.to contain_class('govuk_bundler::config') }

  it { is_expected.to contain_file('/home/deploy/.bundle').with_ensure('directory') }

  it { is_expected.to contain_file('/home/deploy/.bundle/config').with_content(<<-EOS
---
BUNDLE_MIRROR__HTTPS://RUBYGEMS.ORG.FALLBACK_TIMEOUT: 'true'
BUNDLE_MIRROR__HTTPS://RUBYGEMS.ORG: http://127.0.0.1:9292/
EOS
) }

  context 'with non-default params' do
    let(:params) { {
      :user_home => '/why/not/here',
      :server => 'http://www.example.com:4224',
    } }
    it { is_expected.to contain_file('/why/not/here/.bundle/config').with_content(<<-EOS
---
BUNDLE_MIRROR__HTTPS://RUBYGEMS.ORG.FALLBACK_TIMEOUT: 'true'
BUNDLE_MIRROR__HTTPS://RUBYGEMS.ORG: http://www.example.com:4224/
EOS
) }
  end
end
