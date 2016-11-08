module Jekyll
  module Tags
    class SlimIncludeTag < IncludeTag
      def read_file(file, context)
        content = super
        Converters::Slim.new(context.registers[:site].config['slim']).convert(content)
      end
    end
  end
end

Liquid::Template.register_tag('slim', Jekyll::Tags::SlimIncludeTag)
