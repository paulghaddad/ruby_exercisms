class Bob
  NO_WHITESPACE = /\A\s*\z/
  HAS_A_LETTER = /[a-zA-Z]+/

  attr_reader :remark

  def hey(remark)
    @remark = remark
    analyze_remark
  end

  private

  def analyze_remark
    case
    when yell?
      "Whoa, chill out!"
    when question?
      "Sure."
    when nothing_said?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end

  def question?
    remark =~ /\?\z/
  end

  def nothing_said?
    remark =~ NO_WHITESPACE
  end

  def yell?
    remark == remark.upcase && remark =~ HAS_A_LETTER
  end
end
