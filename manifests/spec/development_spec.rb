require_relative '../../spec_helper'

describe 'development', :type => :class do
  let(:facts) { { :govuk_class => "development", :govuk_platform => "development" } }
  it { should_not raise_error(Puppet::ParseError) }
end
