class Person
  # get - read, name cannot be changed
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
    #:name is a method related to variable @name

  # def name
  #   @name
  # end

  # initialize
  def initialize(new_name, new_bank_account=25, new_happiness=8, new_hygiene=8)
    @name = new_name
    @bank_account = new_bank_account
    @happiness = new_happiness
    @hygiene = new_hygiene
  end

  def happiness=(new_happiness)
    #setter, allows us to change happiness
    @happiness = new_happiness
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    else
      @happiness = new_happiness
    end
  end

  def hygiene=(new_hygiene)
    #setter, allows us to change happiness
    if new_hygiene < 0
      @hygiene = 0
    elsif new_hygiene > 10
      @hygiene = 10
    else
      @hygiene = new_hygiene
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary_amount)
     @bank_account += salary_amount
     return "all about the benjamins"
  end

  def take_bath
    # if @hygiene > 10
    #   @hygiene = 10
    # else
    #   @hygiene = new_hygiene
    # end
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(convo_starter, convo_topic)
    if convo_topic == "politics"
      self.happiness -= 2
      convo_starter.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif convo_topic == "weather"
      self.happiness += 1
      convo_starter.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end

stella = Person.new("Stella")
blanche = Person.new("Blanche")
