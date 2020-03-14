# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-themed-console"
  spec.version       = "0.0.1"
  spec.authors       = ["0dayprotect"]
  spec.email         = ["57237084+0dayprotect@users.noreply.github.com"]

  spec.summary       = "A Black theme for 0dayprotect"
  spec.homepage      = "https://github.com/0dayprotect/jekyll-themed-console"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", ">= 3.5"
  spec.add_runtime_dependency "jekyll-seo-tag"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
