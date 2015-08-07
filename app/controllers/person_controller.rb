class PersonController < ApplicationController

  def index
    @people = Person.where('upvote > 10000').order('upvote desc')
    @page = @people.size / 20
  end

  def person_answer
    user = params[:user]
    @answers = Answer.where('user = ?', user)
  end

end
