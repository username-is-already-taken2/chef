name 'train-core'

dependency 'ruby'
dependency 'rubygems'
dependency 'bundler'
dependency 'appbundler'

license :project_license
default_version 'miah/train_core'
source git: 'https://github.com/chef/train.git'
skip_transitive_dependency_licensing true

build do
  env = with_standard_compiler_flags(with_embedded_path)
  delete "#{name}-*.gem"
  gem "build #{name}.gemspec", env: env
  gem "install #{name}-*.gem --no-document", env: env
end
