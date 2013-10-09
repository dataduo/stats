class WelcomeController < ApplicationController
  #require 'csv'

  def index
  	@lines = []
  	@data_file = File.read(File.join(Rails.root, 'app','csv','test.csv'))
  	
csv = CSV.parse(@data_file , :headers => true)
csv.each do |row|
  @lines.push(row.to_hash)
end

    @art = @lines[0]["Art"]


     #csv_to_array(@data_file, @lines)

    # CSV.foreach(@data_file, headers: true) do |row|
    #   @lines.push(row.to_hash)
    # end
  	 #@art = l@ines[0]["Art"]
  end

  def new
  end



# def csv_to_array(@file, @lines)
# 	CSV.foreach(file, headers: true) do |row|
# 		@lines.push(row.to_hash)
# 	end
# end






end
