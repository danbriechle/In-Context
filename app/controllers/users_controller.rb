class UsersController < ApplicationController
  def show
    @user = User.first
    @new_content = ArticleList.update
  end
end
