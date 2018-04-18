require 'pry'

class String

  def sentence?
    return true if self.end_with?(".")
    false
  end

  def question?
    return true if self.end_with?("?")
    false
  end

  def exclamation?
    return true if self.end_with?("!")
    false
  end

  def count_sentences
    self[/!{2,}/] = "!" if self.match?(/!{2,}/)
    self[/\?{2,}/] = "?" if self.match?(/\?{2,}/)
    self[/\.{2,}/] = "." if self.match?(/\.{2,}/)
    self.split(/!?\./)
  end
end

binding.pry
