# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aws_es_transport'

Gem::Specification.new do |spec|
  spec.name          = "aws-es-transport"
  spec.version       = AwsEsTransport::VERSION
  spec.authors       = ["Cary Dunn"]
  spec.email         = ["cary.dunn@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
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
