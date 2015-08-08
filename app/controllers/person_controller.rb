class PersonController < ApplicationController

  def index
    @people = Person.where('upvote > 5000').order('upvote desc')
    @page = @people.size / 20
  end

  def person_answer
    user = params[:user]
    @person = Person.new.get_person(user)
    @answers = Answer.new.get_answers(user)
  end

end
