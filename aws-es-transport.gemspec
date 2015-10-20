# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aws_es_transport'

Gem::Specification.new do |spec|
  spec.name          = "aws-es-transport"
  spec.version       = AwsEsTransport::VERSION
  spec.authors       = ["Cary Dunn"]
  spec.email         = ["cary.dunn@gmail.com"]

  spec.summary       = %q{Elasticsearch Transport for AWS V4 Signing}
  spec.description   = %q{Elasticsearch Transport for AWS V4 Signing}
  spec.homepage      = "https://github.com/cdunn/aws-es-transport"
  spec.license       = "apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'elasticsearch', ['>= 1.0.10', '~> 1.0']
  spec.add_runtime_dependency "aws-sdk", ['>= 2.1.14', '~> 2.1']
  spec.add_runtime_dependency "faraday", '~> 0.9.1'
  spec.add_runtime_dependency "faraday_middleware", '~> 0.10.0'
end
