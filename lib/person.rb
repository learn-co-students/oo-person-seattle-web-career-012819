require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happy_level)
    @happiness = happy_level
    if @happiness > 10
      @happiness = 10
    elsif @happiness <= 0 
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene=(hygiene_level)
    @hygiene = hygiene_level
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene <= 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def happy?
    !!(@happiness > 7)
  end

  def clean?
    !!(@hygiene > 7)
  end

  def get_paid(salary)
    @bank_account += salary
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

  def call_friend(person)
    person.happiness += 3
    self.happiness += 3

    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(speaker, topic)
    case topic
      when "politics"
        self.happiness -= 2
        speaker.happiness -= 2
        'blah blah partisan blah lobbyist'
      when "weather"
        self.happiness += 1
        speaker.happiness += 1
        'blah blah sun blah rain'
      else
        "blah blah blah blah blah"
    end
  end

end
