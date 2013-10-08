class WelcomeController < ApplicationController
  require 'csv'

  def index
  	@lines = []
  	@data_file = File.read('../public/test.csv')
  	csv_to_array(@data_file, @lines)
  	# lines[0]["Art"]
  end

  def new
  end



def csv_to_array(file, lines)
	CSV.foreach(file, headers: true) do |row|
		lines.push(row.to_hash)
	end
end






end
