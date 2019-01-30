class Person
attr_accessor
attr_reader :name, :happiness, :hygiene, :bank_account

def initialize(name)
  @name = name
  @bank_account = 25.00
  @happiness = 8
  @hygiene = 8
end


def happiness=(happiness)
if happiness < 0
  @happiness = 0
elsif happiness > 10
  @happiness = 10
else
  @happiness = happiness
end
end



def hygiene=(hygiene)
  if hygiene < 0
    @hygiene = 0
  elsif hygiene > 10
    @hygiene = 10
  else
    @hygiene = hygiene
  end
  end



def bank_account=(dollars)
  @bank_account = dollars
end

def clean?
   self.hygiene > 7
 end

 def happy?
    self.happiness > 7
  end

  def get_paid(salary)
    self.bank_account = salary + self.bank_account
    return "all about the benjamins"
  end

def take_bath
  self.hygiene = self.hygiene + 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness = self.happiness + 2
  self.hygiene = self.hygiene - 3
  return "♪ another one bites the dust ♫"
end

def call_friend(felix)
  self.happiness = self.happiness + 3
  felix.happiness = felix.happiness + 3
  return "Hi #{felix.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
    self.happiness = self.happiness - 2
    person.happiness = person.happiness - 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness = self.happiness + 1
    person.happiness = person.happiness + 1
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end


end # End of Person class


# puts clean?
