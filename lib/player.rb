class Player
  
  attr_accessor :name

   def rock!
    @rock = true
  end

    def rock?
      @rock
    end

  def scissors!
    @scissors = true
  end

  def scissors?
    @scissors
  end

  def paper!
    @paper = true
  end

  def paper?
    @paper
  end
end
