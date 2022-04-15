# frozen_string_literal: true

lib = File.expand_path('../lib/', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

Gem::Specification.new do |spec|
  spec.name = 'interstellar-next-platform'
  spec.version = '0.1.pre1'
  spec.date = '2022-04-15'

  spec.authors = ['Third Party Transportation Systems LLC']
  spec.email = ['hello@next-tms.com']

  spec.summary = 'This library is an Interstellar plug-in that adds the Next TMS platform'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/next-tms/interstellar-next-platform'

  spec.files = Dir['lib/**/*']
  spec.files += Dir['configuration/*/*.yml']
  spec.files += Dir['[A-Z]*'] + Dir['test/**/*']
  spec.files.reject! { |fn| fn.include? 'CVS' }
  spec.require_paths = ['lib']

  spec.add_dependency 'interstellar', '0.1.pre19'
end
