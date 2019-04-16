class UsersController < ApplicationController
  def show
    @user = User.last
    @new_content = Rails.cache.read('article-key')
  end
end
