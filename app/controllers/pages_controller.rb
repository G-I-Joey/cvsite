class PagesController < ApplicationController
  def home
    @experiences = Experience.all
    @projects = Project.all
  end
end
