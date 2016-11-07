module Jekyll
  class SlimIncludeTag < Jekyll::Tags::IncludeTag

  end
  class SlimIncludeRelativeTag  < Jekyll::Tags::IncludeRelativeTag

  end
end

Liquid::Template.register_tag('slim', Jekyll::SlimIncludeTag)
Liquid::Template.register_tag('slim_relative', Jekyll::SlimIncludeRelativeTag)
