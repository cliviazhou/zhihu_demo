class Answer < ActiveRecord::Base

  def get_answers(user)
    @answers = Answer.where('user = ?', user)
    return @answers
  end

  def random_answers
    @ans_list = Array.new
    (1..6).each do |i|
      num = rand(i * 10000)
      ans = Answer.find(num)
      @ans_list << ans
    end
    return @ans_list
  end

end