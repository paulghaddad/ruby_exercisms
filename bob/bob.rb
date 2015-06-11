class Bob
  def hey(remark)
    if yell?(remark)
      "Whoa, chill out!"
    elsif question?(remark)
      "Sure."
    elsif nothing_said?(remark)
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
  
  private

  def question?(remark)
   remark[-1] =~ /\?/
  end

  def nothing_said?(remark)
    remark =~ /\A\s*\z/
  end

  def yell?(remark)
    remark == remark.upcase && remark =~ /[a-zA-z]+/
  end
end
