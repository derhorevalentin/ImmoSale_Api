class ApplicationController < ActionController::API

  def has_same_user
    if @article.user == current_user
      return true
    end
  end


end
