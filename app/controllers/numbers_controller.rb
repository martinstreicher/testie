class NumbersController < ApplicationController
  def show
    if error?
      render nothing: true, status: 404
    else
      result = FizzBuzz.new(params[:id]).result
      render text: result, status: 200
    end
  end

  private

    def error?
      !FizzBuzz.integer?(params[:id])
    end
end
