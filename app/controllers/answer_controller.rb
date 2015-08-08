class AnswerController < ApplicationController

  def index
    @answers = Answer.new.random_answers
  end


end
