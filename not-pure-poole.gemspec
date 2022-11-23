# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "서영훈"
  spec.version       = "0.1.0"
  spec.authors       = ["Mark Otto", "서영훈"]
  spec.email         = ["darktemi90@nate.com"]

  spec.summary       = "배구, 등산, 맛집 탐방 등 소소한 일상"
  spec.homepage      = "https://github.com/darktemi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.13"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.0"
end
