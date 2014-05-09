class String
  # Simply indents a string using normal spaces
  def indent(spaces)
    num = (" " * spaces)
    gsub(/^/, num)
  end

  # Pushes each line of code out the requried number of spaces (excludes the first line)
  def code_indent(spaces)
    num = (" " * spaces)
    if include? "\n"
      first_line = split(/\r?\n/)[0]
      no_first_line = split("\n")[1..-1].join("\n")
      formatted = no_first_line.gsub(/^/, num)
      [first_line.to_s, formatted.to_s].join("\n")
    else
      self
    end
  end

  # Poor man's way to quickly add whitespace > 1 space in html (for those who can't be bothered with padding)
  def html_indent(spaces)
    space_string = String.new
    spaces.times do
      space_string += "&nbsp;"
    end

    return self.insert(0, space_string)
  end
end