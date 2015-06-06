class Bob
  
  def hey(remark)
    if remark == remark.upcase && remark =~ /[a-zA-z]+/
      "Whoa, chill out!"
    elsif remark[-1] =~ /\?/
      "Sure."
    elsif remark =~ /\A\s*\z/
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
