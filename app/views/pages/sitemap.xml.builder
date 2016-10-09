xml.instruct!
xml.urlset(
    'xmlns'.to_sym => "http://www.sitemaps.org/schemas/sitemap/0.9",
    'xmlns:image'.to_sym => "http://www.google.com/schemas/sitemap-image/1.1"
) do
  xml.url do
    xml.loc "#{root_url}"
    xml.changefreq("weekly")
  end
  @pages.each do |page|
    xml.url do
      xml.loc "#{root_url}#{page.meta_data.url_alias}"
      xml.changefreq("weekly")
    end
  end

  @appartments.each do |page|
    xml.url do
      xml.loc "#{root_url}#{page.meta_data.url_alias}"
      xml.changefreq("weekly")
    end
  end

end
