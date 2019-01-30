require 'pry'
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank


  def initialize(name)
    @name = name
    @bank = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness= (happiness)
    if happiness >= 10
       @happiness = 10
     elsif happiness <=0
       @happiness = 0
     else
       @happiness = happiness
     end
  end

  def hygiene= (hygiene)

     if hygiene >= 10
        @hygiene = 10
      elsif hygiene <=0
        @hygiene = 0
      else
        @hygiene = hygiene
      end

  end

def clean?
  if @hygiene > 7
    true
  else
    false
  end
end

def happy?
   if @happiness > 7
     true
   else
     false
   end
end


def get_paid(salary)
  @bank += salary
  "all about the benjamins"
end

def take_bath
  if @hygiene >= 6
    @hygiene = 10
  else
  @hygiene +=4
  end
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  if @happiness >= 8
    @happiness = 10
  else
    @happiness +=2
  end

  if @hygiene <= 3
    @hygiene = 0
  else
    @hygiene -=3
  end
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  @happiness +=3
  friend.happiness = friend.happiness + 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
  binding.pry
end





p1 = Person.new("Bob")
p2 = Person.new("Sarah")
binding.pry

end
