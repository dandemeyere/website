module ApplicationHelper
  def markup(body)
    body.gsub(/\[gist\]([0-9]*)\[\/gist\]/) {|match|  "<script src='https://gist.github.com/#{$1}.js'></script>" }
  end
end
