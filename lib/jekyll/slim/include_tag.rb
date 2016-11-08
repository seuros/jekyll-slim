module Jekyll
  class SlimIncludeTag < Jekyll::Tags::IncludeTag
    def read_file(file, context)
      content = super
      SlimConverter.new(context.registers[:site].config['slim']).convert(content)
    end
  end
end

Liquid::Template.register_tag('slim', Jekyll::SlimIncludeTag)
