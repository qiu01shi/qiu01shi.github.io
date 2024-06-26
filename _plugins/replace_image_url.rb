module Jekyll
  module ReplaceImageUrl
    def replace_image_url(input)
      site = @context.registers[:site]
      baseurl = site.config['github']['repository_url']
      input.gsub("../media", "#{baseurl}/media").gsub("%5F", "_")
    end
  end
end

Liquid::Template.register_filter(Jekyll::ReplaceImageUrl)