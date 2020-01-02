# frozen_string_literal: true

require 'bundler'
Bundler.require(:default)

module StaticCompiler
  module_function

  def compile
    content = File.read('src/style.scss')

    File.write('dist/style.css', SassC::Engine.new(content).render)

    Dir.glob('src/templates/*.html.slim') do |file|
      file_basename = File.basename(file).split('.')[0]

      result = Slim::Template.new('src/layout.html.slim').render do
        Slim::Template.new(file).render
      end

      File.write("dist/#{file_basename}.html", result)
    end
  end
end
