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
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

end
