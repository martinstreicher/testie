require 'rails_helper'

# For multiples of three, the call should return "Fizz".
# For multiples of five, it should return "Buzz".
# For multiples of both three and five it should return "FizzBuzz".
# If none of these, return an empty string.
# the controller should be able to handle any (reasonable) positive or
# negative integer Invalid (i.e. non-integer) values should return a 404

RSpec.describe NumbersController, type: :controller do
  describe 'Actions' do
    describe 'show...' do
      specify '... returns 404 for anything else' do
        get :show, id: 10.9
        expect(response).to be_not_found
      end

      specify '... returns `Fizz` for multiples of three' do
        get :show, id: 3
        expect(response).to be_success
        expect(response.body).to eq('Fizz')
      end

      specify '... returns `Buzz` for multiples of five' do
        get :show, id: 5
        expect(response).to be_success
        expect(response.body).to eq('Buzz')
      end

      specify '... returns `FizzBuzz` for multiples of three and five' do
        get :show, id: 15
        expect(response).to be_success
        expect(response.body).to eq('FizzBuzz')
      end
    end
  end
end

