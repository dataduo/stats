class WelcomeController < ApplicationController
  #require 'csv'
  require 'json'

  def index



  # 	@lines = []
  	@data_file = File.read(File.join(Rails.root, 'app','csv','test.csv'))
  	
   csv = CSV.parse(@data_file , :headers => true)

   @test = csv
  #csv.each do |row|
  #  @lines.push(row.to_hash)
  #end


     #csv_to_array(@data_file, @lines)

    # CSV.foreach(@data_file, headers: true) do |row|
    #   @lines.push(row.to_hash)
    # end
  
  end

  def new
  end



# def csv_to_array(@file, @lines)
# 	CSV.foreach(file, headers: true) do |row|
# 		@lines.push(row.to_hash)
# 	end
# end






end
