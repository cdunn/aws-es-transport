require 'faraday'
require 'aws-es-transport/aws_v4_signer_impl'

module FaradayMiddleware
  Faraday::Request.register_middleware aws_v4_signer: lambda { AwsV4Signer }
end
