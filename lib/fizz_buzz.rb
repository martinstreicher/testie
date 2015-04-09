class FizzBuzz
  attr_reader :number

  def self.integer?(number)
    number.to_s.match(/^([+\-])?\d+$/)
  end

  def initialize(number)
    raise ArgumentError, "number #{number} is not an integer" unless self.class.integer?(number)
    @number = number.to_i
  end

  def result
    String.new.tap do |answer|
      answer << 'Fizz' if divisible_by_three
      answer << 'Buzz' if divisible_by_five
    end
  end

  private

    def divisible_by_three
      number % 3 == 0
    end

    def divisible_by_five
      number % 5 == 0
    end
end
