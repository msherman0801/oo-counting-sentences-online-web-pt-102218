require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else 
      false 
    end
  end

  def question?
    if self.end_with?("?")
      true 
    else 
      false 
    end

  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    out = self.split(/[.?!]/)
    if out.include? || out.include?(/""\W)
      out.delete([])
      out.delete()
      return out.count
    else
      out.count
    end
  end
end