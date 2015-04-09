require 'spec_helper'
require File.join(__dir__, '../../lib/fizz_buzz')

describe FizzBuzz do
  specify '... returns `Fizz` for multiples of three' do
    (3..100).step(3) do |i|
      next if i % 5 == 0
      expect(described_class.new(i).result).to eq('Fizz')
    end
  end

  specify '... returns `Buzz` for multiples of five' do
    (5..100).step(5) do |i|
      next if i % 3 == 0
      expect(described_class.new(i).result).to eq('Buzz')
    end
  end

  specify '... returns `FizzBuzz` for multiples of three and five' do
    (1..100).step(3) do |i|
      next unless (i % 3 == 0) && (i % 5 == 0)
      expect(described_class.new(i).result).to eq('FizzBuzz')
    end
  end

  specify { expect(described_class.new(1).result).to eq('') }

  context '.new' do
    specify { expect { described_class.new(1.0)}.to raise_exception(ArgumentError) }
    specify { expect { described_class.new(3)}.to_not raise_exception }
  end

  context '.integer?' do
    specify { expect(described_class.integer?(1)).to be_truthy }
    specify { expect(described_class.integer?(0)).to be_truthy }
    specify { expect(described_class.integer?(-1)).to be_truthy }
    specify { expect(described_class.integer?(1.3)).to be_falsey }
  end
end
