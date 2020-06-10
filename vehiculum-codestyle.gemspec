lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vehiculum/codestyle/version'

Gem::Specification.new do |spec|
  spec.name     = 'vehiculum-codestyle'
  spec.version  = Vehiculum::Codestyle::VERSION
  spec.licenses = ['MIT']
  spec.authors  = ['Vehiculum Tech Team']
  spec.email    = ['tech-services@vehiculum.de']

  spec.summary  = 'Vehiculum style guides and shared style configs.'
  spec.homepage = 'https://github.com/vehiculum-berlin/vehiculum-codestyle'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '0.82.0'
  spec.add_dependency 'rubocop-performance', '1.5.2'
  spec.add_dependency 'rubocop-rails', '2.5.2'
  spec.add_dependency 'rubocop-rspec', '1.39.0'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 12.3'
end
