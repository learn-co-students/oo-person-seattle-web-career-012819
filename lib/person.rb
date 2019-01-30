require 'pry'
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def adjust
    if @happiness >10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end

    if @hygiene >10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happiness= (happiness)
      @happiness = happiness
      self.adjust
  end

  def hygiene= (hygiene)
    @hygiene = hygiene
    self.adjust
  end

  def clean?
     @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end

def take_bath
  @hygiene +=4
  self.adjust
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  @happiness +=2
  @hygiene -=3
  self.adjust
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  @happiness +=3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
  self.adjust
  friend.adjust
end

def start_conversation(friend, topic)
  if topic == 'politics'
    self.happiness -= 2
    friend.happiness -=2
    "blah blah partisan blah lobbyist"
  elsif topic == 'weather'
    self.happiness += 1
    friend.happiness +=1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end

end



# p1 = Person.new("Bob")
# p2 = Person.new("Sarah")


end
