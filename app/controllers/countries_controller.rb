class CountriesController < ApplicationController
  def index
    @countries = Country.all
    # code
  end
end
