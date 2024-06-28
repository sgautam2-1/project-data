# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    @author_nationalities = Author.pluck(:nationality).uniq
  end

  # Other actions as needed
end
