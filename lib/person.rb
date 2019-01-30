#require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def self.constrain(chk_num, min_num, max_num)
    (chk_num < min_num) ? min_num : (chk_num > max_num) ? max_num : chk_num
  end

  def happiness=(happy)
    @happiness = self.class.constrain(happy, 0, 10)
  end

  def hygiene=(cleanliness)
    @hygiene = self.class.constrain(cleanliness, 0, 10)
  end

  def happy?
    !!(@happiness > 7)
  end

  def clean?
    !!(@hygiene > 7)
  end

  def get_paid(money)
    self.bank_account += money
    say = "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    sing = "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    jams = "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    greeting = "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(speaker, topic)
    delta_happy = (topic=="politics") ? -2 : (topic=="weather") ? 1 : 0
    convo = (topic=="politics") ? "blah blah partisan blah lobbyist" : (topic=="weather") ? "blah blah sun blah rain" : "blah blah blah blah blah"
    self.happiness += delta_happy
    speaker.happiness += delta_happy
    convo
  end
end