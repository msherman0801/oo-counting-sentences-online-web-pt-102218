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
      out.each do |i| 
        if i.length < 1
          out.delete(i)
        end 
      end
      out.count
  end 
end