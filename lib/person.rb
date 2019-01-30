class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name, happiness=8)
        @name = name
        @bank_account = 25
        @happiness = happiness
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness <= 10 && happiness >= 0
            @happiness = happiness 

        elsif happiness >= 10
            @happiness = 10

        elsif happiness <= 0
            @happiness = 0
        end

        def hygiene=(hygiene)
            if hygiene <= 10 && hygiene >= 0
                @hygiene = hygiene 
    
            elsif hygiene >= 10
                @hygiene = 10
    
            elsif hygiene <= 0
                @hygiene = 0
            end
         end
    end

    def happy?

        if self.happiness > 7
            true
        else
            false
        end
        
        #do stuff
    end
    def clean?

        if self.hygiene > 7
            true
        else
            false
        end
        
        #do stuff
    end
    def get_paid(salary)

        @bank_account += salary
        return "all about the benjamins"

    end
    def take_bath
        @hygiene = hygiene + 4
        self.hygiene = (hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"

    end
    def work_out

        @happiness = happiness + 2
        self.happiness = (happiness)

        @hygiene = hygiene - 3
        self.hygiene = (hygiene)

        return "♪ another one bites the dust ♫"

    end
    def call_friend(friend)
        friend.happiness = (friend.happiness + 3)
        self.happiness = (happiness + 3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"

    end
    def start_conversation(friend, topic)
        if topic == "politics"
        friend.happiness = (friend.happiness - 2)
        self.happiness = (happiness - 2)
        "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            friend.happiness = (friend.happiness + 1)
            self.happiness = (happiness + 1)
            "blah blah sun blah rain"
        
        else topic
            "blah blah blah blah blah"
        end
        # return "Hi #{friend.name}! It's #{self.name}. How are you?"

    end
end


#if happiness is greater than 10, set happiness to 10



