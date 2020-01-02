# frozen_string_literal: true

require_relative 'compiler'

guard :shell do
  watch(%r{^src/.*}) do
    StaticCompiler.compile

    puts 'Templates and styles recompiled! 💥'
  end
end
