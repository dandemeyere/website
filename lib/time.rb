class Time
  def datetime_prettify
    month = self.strftime("%B")
    day = self.strftime("%d").to_i
    year = self.strftime("%Y")

    if [1, 21, 31].include?(day)
      return "#{month} #{day}st, #{year}"
    elsif [2, 22].include?(day)
      return "#{month} #{day}nd, #{year}"
    elsif [3, 23].include?(day)
      return "#{month} #{day}rd, #{year}"
    else
      return "#{month} #{day}th, #{year}"
    end
  end
end
