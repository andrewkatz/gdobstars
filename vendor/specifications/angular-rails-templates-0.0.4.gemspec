# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "angular-rails-templates"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Damien Mathieu"]
  s.date = "2013-10-30"
  s.email = ["42@dmathieu.com"]
  s.homepage = "https://github.com/dmathieu/angular-rails-templates"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.5"
  s.summary = "Use your angular templates with rails' asset pipeline"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
      s.add_runtime_dependency(%q<sprockets-rails>, [">= 0"])
      s.add_development_dependency(%q<uglifier>, [">= 0"])
    else
      s.add_dependency(%q<railties>, [">= 3.1"])
      s.add_dependency(%q<sprockets-rails>, [">= 0"])
      s.add_dependency(%q<uglifier>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1"])
    s.add_dependency(%q<sprockets-rails>, [">= 0"])
    s.add_dependency(%q<uglifier>, [">= 0"])
  end
end
