# frozen_string_literal: true

require_relative 'lib/solidus_paypal_commerce_platform/version'

Gem::Specification.new do |spec|
  spec.name = 'solidus_paypal_commerce_platform'
  spec.version = SolidusPaypalCommercePlatform::VERSION
  spec.authors = ['Sean Denny', 'Elia Schito']
  spec.email = 'contact@solidus.io'

  spec.summary = 'Integrate Solidus with Paypal Commerce Platform'
  spec.homepage = 'https://github.com/solidusio/solidus_paypal_commerce_platform'
  spec.license = 'BSD-3-Clause'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/solidusio/solidus_paypal_commerce_platform'
  spec.metadata['changelog_uri'] = 'https://github.com/solidusio/solidus_paypal_commerce_platform/releases'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.required_ruby_version = Gem::Requirement.new('>= 3.1')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  files = Dir.chdir(__dir__) { `git ls-files -z`.split("\x0") }

  spec.files = files # don't exclude specs, they need to be copied to the target app
  spec.bindir = "exe"
  spec.executables = files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'deface', '~> 1.5'
  spec.add_dependency 'solidus_api'
  spec.add_dependency 'solidus_core', '>= 4.1', '< 5.0'
  spec.add_dependency 'solidus_support', '>= 0.12.0'
  spec.add_dependency 'solidus_webhooks', '~> 0.2'

  spec.add_dependency 'paypalhttp'

  spec.add_development_dependency 'solidus_dev_support', '~> 2.5'
end
