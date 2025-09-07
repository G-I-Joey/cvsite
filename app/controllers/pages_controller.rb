class PagesController < ApplicationController
  def home
    @experiences = Experience.all
    @projects    = Project.all
    @skills      = Skill.all
    @educations  = Education.all
  end
end
