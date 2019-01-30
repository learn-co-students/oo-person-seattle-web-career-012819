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

    # Creating setters prevents manual override of levels to surpass min and max
    def hygiene=(int)
        @hygiene = int
        if self.hygiene > 10
            self.hygiene = 10
        elsif self.hygiene < 0
            self.hygiene = 0
        end
    end

    def happiness=(int)
        @happiness = int
        if self.happiness > 10
            self.happiness = 10
        elsif self.happiness < 0
            self.happiness = 0
        end
    end

    # clean?
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    # happy?
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    # get_paid
    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end
    # take_bath
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    # work_out
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    # call_friend
    def call_friend(friend)
        #binding.pry
        self.happiness += 3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    # start_conversation
    #   politics happiness -1
    #   weather happiness +1
    #   if not politics or weather blahs
    def start_conversation(friend, topic)
        if topic.downcase == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic.downcase == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

def test
    katie = Person.new("Katie")
    ethan = Person.new("Ethan")
    #work out test
    puts "Workout test:"
    5.times {
        katie.work_out
        puts katie.hygiene
    }
    katie.clean?

    katie.call_friend(ethan)
    katie.call_friend(ethan)
    katie.call_friend(ethan)
    puts "Katie's happiness: #{katie.happiness}"
    puts "Ethan's happiness: #{ethan.happiness}"

    puts "Politics conversation"
    katie.start_conversation(ethan, "politics")
    puts "Katie's happiness: #{katie.happiness}"
    puts "Ethan's happiness: #{ethan.happiness}"

    puts "Weather conversation"
    katie.start_conversation(ethan, "weather")
    puts "Katie's happiness: #{katie.happiness}"
    puts "Ethan's happiness: #{ethan.happiness}"

    puts "Conversation about nothing"
    katie.start_conversation(ethan, "nothing")
    puts "Katie's happiness: #{katie.happiness}"
    puts "Ethan's happiness: #{ethan.happiness}"

end

# binding.pry

# Awesomeness provided by Ethan Roberts and Katie Carrel
