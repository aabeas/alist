class PagesController < ApplicationController
  def home
    redirect_to todos_path if logged_in?
  end

  def about
  end

  def support
  end

  def locations
  end

  def privacy
  end

  def terms
  end
end
