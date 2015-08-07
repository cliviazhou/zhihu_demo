class AnswerController < ApplicationController

  def index
    base = 'http://www.zhihu.com/people/'
    user = params[:user]
    @person = Person.find_by_userlink(base + user)
    @answers = Answer.where('user = ?', user)
  end


end
