# frozen_string_literal: true

require 'bundler'
require_relative 'compiler'

# Enable partials in Slim
require 'slim/include'

namespace :static do
  desc 'Compiles styles and templates'
  task :compile do
    StaticCompiler.compile
  end
end
