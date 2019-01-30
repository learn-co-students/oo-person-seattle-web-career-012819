require 'fixnum_patch.rb'

class Person
  attr_reader :name, :happiness , :hygiene
  attr_accessor :bank_account

  def initialize(name,bank_account=25,happiness=8,hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end


  def happiness=(new_happiness)
    @happiness = new_happiness.clamp(0,10)
  end

  def hygiene=(new_hygiene)
    @hygiene = new_hygiene.clamp(0,10)
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person,topic)
    case topic
    when "politics"
      self.happiness -= 2
      person.happiness -=2
      'blah blah partisan blah lobbyist'
    when "weather"
      self.happiness += 1
      person.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end


end
