# your code goes here
require 'pry'
class Person
  def initialize(name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene =8
  end
  # def name
  #   @name
  # end
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def happiness= (num)
    if num>10
      @happiness =10
    elsif num<0
      @happiness=0
    else
      @happiness = num
    end
  end

  def hygiene= (num)
    if num>10
      @hygiene =10

    elsif num<0
      @hygiene=0
    else
      @hygiene = num
    end
  end

  def happy?
     #@happiness.true{|x| x>7}
    if @happiness>7
      true
    else
      false
    end

  end

  def clean?
    if @hygiene>7
      true
    else
      false
    end

  end

  def get_paid(salary)
    @bank_account+=salary
    return 'all about the benjamins'
  end

  def take_bath
    @hygiene+=4
    self.hygiene= (@hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness += 2
    @hygiene -= 3
    self.hygiene= (@hygiene)
    self.happiness= (@happiness)
    return "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
    @happiness += 3
    friend.happiness += 3 
    self.happiness= (@happiness)
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation (person, topic)
    if topic == "politics"
      person.happiness -= 2
      @happiness -= 2
      self.happiness= (@happiness)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      @happiness += 1
      self.happiness= (@happiness)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
