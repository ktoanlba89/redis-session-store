Gem::Specification.new do |gem|
  gem.name = 'redis-session-store'
  gem.authors = ['Mathias Meyer']
  gem.email = ['meyer@paperplanes.de']
  gem.summary = 'A drop-in replacement for e.g. MemCacheStore to ' \
                'store Rails sessions (and Rails sessions only) in Redis.'
  gem.description = gem.summary
  gem.homepage = 'https://github.com/ktoanlba89/redis-session-store'
  gem.license = 'MIT'

  gem.has_rdoc = true
  gem.extra_rdoc_files = %w(LICENSE AUTHORS.md CONTRIBUTING.md)

  gem.files = `git ls-files -z`.split("\x0")
  gem.require_paths = %w(lib)
  gem.version = File.read('lib/redis-session-store.rb').match(/^  VERSION = '(.*)'/)[1]

  gem.add_runtime_dependency 'redis', '3.2.1'
  gem.add_runtime_dependency 'actionpack', '2.3.18'

  gem.add_development_dependency 'fakeredis', '0.5.0'
  gem.add_development_dependency 'simplecov', '0.14.1'
  gem.add_development_dependency 'rake', '10.4.2'
  gem.add_development_dependency 'rspec', '~> 2.5'
  gem.add_development_dependency 'i18n', '0.6.9'
  gem.add_development_dependency 'json', '1.8.3'
end
