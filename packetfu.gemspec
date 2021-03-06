require 'rake'
require './lib/packetfu/version'

Gem::Specification.new do |s|
  s.name        = 'packetfu'
  s.version     = PacketFu::VERSION
  s.authors     = ['Tod Beardsley']
  s.email       = 'todb@packetfu.com'
  s.summary     = 'PacketFu is a mid-level packet manipulation library.'
  s.homepage    = 'https://github.com/todb/packetfu'
  s.description = %q{PacketFu is a mid-level packet manipulation library for Ruby. With it, users can read, parse, and write network packets with the level of ease and fun they expect from Ruby. Note that this gem does not automatically require pcaprub, since users may install pcaprub through non-gem means.}
  s.files       = `git ls-files`.split($/)
  s.license     = 'BSD'

  s.add_dependency('network_interface', '>= 0.0.1')
  s.add_dependency('pcaprub', '>= 0.9.2')
  s.add_development_dependency('bundler')
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec',     '>= 2.14.1')
  s.add_development_dependency('rspec-its', '>= 1.0.0')
  s.add_development_dependency('sdoc',      '>= 0.2.0')

  s.extra_rdoc_files  = %w[.document README.rdoc]
  s.test_files        = (s.files & (Dir['spec/**/*_spec.rb'] + Dir['test/test_*.rb']) )
  s.rubyforge_project = 'packetfu'
end
