require 'sliq'
require 'jekyll'
require 'jekyll/layout'
require 'jekyll/slim/version'
require 'jekyll/slim/include_tag'

module Jekyll
  class Converters::Slim < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /slim/i
    end

    def output_ext(ext)
      '.html'
    end

    def convert(content)
      ::Sliq::Converter.new(@config['slim']) { content }.render
    end
  end
end