class PagesController < ApplicationController
  def about
    @data_sources = [
      { name: 'Faker', description: 'Generates fake data for authors and books' },
      { name: 'CSV File', description: 'Additional data source for genres' }
    ]
  end
end
