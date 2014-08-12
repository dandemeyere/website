xml.instruct! :xml, :version => "1.0"

xml.rss :version => "2.0" do
  xml.channel do
    xml.title       "Dan DeMeyere"
    xml.description "I'm Dan DeMeyere. Director of Engineering at thredUP. Casual blogger, Tottenham Hotspur fan, maker of breakfast sandwiches, Michigan State spartan."
    xml.link        "http://www.dandemeyere.com"

    @posts.each do |post|
      xml.item do
        xml.title       post.title
        xml.link        "/blog/#{post.permalink}"
        xml.description markup(post.body)
        xml.guid        "/blog/#{post.permalink}"
        xml.pubDate     post.published_at.strftime('%a, %d %b %Y %I:%M:%S %z')
        xml.content     markup(post.body)
      end
    end
  end
end
