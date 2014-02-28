xml.instruct! :xml, :version => "1.0"

xml.rss :version => "2.0" do
  xml.channel do
    xml.title       "www.dandemeyere.com"
    xml.description "A Developer's Journey Blog Posts"
    xml.link        "http://www.dandemeyere.com/blog/rss.xml"

    @posts.each do |post|
      xml.item do
        xml.title       post.title
        xml.link        "/blog/#{post.permalink}"
        xml.description post.meta_description
        xml.guid        "/blog/#{post.permalink}"
        xml.pubDate     post.published_at.strftime('%a, %d %b %Y %I:%M:%S %z')
        xml.content     markup(post.body)
      end
    end
  end
end
