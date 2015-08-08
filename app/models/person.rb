require 'shorturl'
class Person < ActiveRecord::Base

  has_many :answers

  def get_user
    userlink = self.userlink
    res_arr = userlink.split('/')
    if res_arr != nil
      return res_arr[-1]
    end
  end

  def zip_user_url
    userlink = self.userlink
    return ShortURL.shorten(userlink)
  end

  def get_weibo_url
    weibo_url = self.weibo
    res_arr = weibo_url.split('/')
    if res_arr != nil
      return res_arr[-1]
    end
  end

  def get_person(user)
    base = 'http://www.zhihu.com/people/'
    @person = Person.find_by_userlink(base + user)
    return @person
  end

end
