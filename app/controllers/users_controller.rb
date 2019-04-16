class UsersController < ApplicationController
  def show
    @user = User.last
    @new_content = ArticleList.update
  end
end
