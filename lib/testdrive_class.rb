class Gratitude
  def initialize
    @sentence = ""
  end

  def add(str_grateful)
    if @sentence == ""
      @sentence += str_grateful
    else
      @sentence += ", " + str_grateful
    end
  end

  def format()
    return "Be grateful for: #{@sentence}"
  end

end