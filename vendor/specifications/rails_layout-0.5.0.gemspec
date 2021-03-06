# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rails_layout"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Kehoe"]
  s.date = "2013-11-12"
  s.description = "Generates Rails application layout files for use with various front-end frameworks."
  s.email = ["daniel@danielkehoe.com"]
  s.homepage = "http://github.com/RailsApps/rails_layout/"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.5"
  s.summary = "Rails generator creates application layout files for Twitter Bootstrap and other frameworks."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
