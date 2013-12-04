class String
  def elipse(length)
    return self if self.length < length
    string = self[0..(length - 1)]
    string << '...'
    return string
  end
end
