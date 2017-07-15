# Produces a bunch of AWS facts specific to each instance:
#
# devpayproductcodes
# privateip
# availabilityzone
# version
# instanceid
# billingproducts
# instancetype
# imageid
# accountid
# kernelid
# ramdiskid
# architecture
# pendingtime
# region
#
# Fact name will be the key above prefixed with "aws_"
#
require 'net/http'
require 'json'

def aws_facts
  uri = URI.parse("http://169.254.169.254/latest/dynamic/instance-identity/document")
  body = Net::HTTP.get_response(uri).body
  JSON.parse(body)
end

if Facter.value(:aws_migration)
  aws_facts.each do |key, val|
    factname = key.downcase
    Facter.add("aws_#{factname}") do
      setcode do
        val
      end
    end
  end
end
