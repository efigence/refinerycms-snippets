Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = %q{refinerycms-sl-snippets-versions}
  s.version           = %q{1.0.0}
  s.description       = %q{Ruby on Rails Snippets engine for Refinery CMS}
  s.date              = %q{2012-09-05}
  s.summary           = %q{Html snippets for Refinery CMS page}
  s.authors           = ['Rodrigo García Suárez', 'Simplelogica', 'Marek L.', 'rubyconvict']
  s.email             = %q{rubyconvict@gmail.com}
  s.require_paths     = %w(lib)
  s.homepage          = %q{https://github.com/rubyconvict/refinerycms-snippets-versions}
      
  s.add_dependency    'refinerycms', '~> 2.0.10'
  s.add_dependency    'refinerycms-i18n', '~> 2.0.2'
  s.add_dependency    'sass-rails'
  s.add_dependency    'bootstrap-sass'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
end
