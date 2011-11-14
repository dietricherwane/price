class UsersController < ApplicationController
	def index
	end
	
	def new
		@user = User.new
		@civilite = Civilite.all
		@gender = Gender.all
		@region = Region.all
		@city = City.all
		@marital = Marital.all
		@diploma = Diploma.all
		@domain = Domain.all
		@contract = Contract.all
	end
	
	def create
		#require 'fileutils'
		@user = User.new( params[:user] )
		@city = City.find_by_id(params[:post][:city_id]).name
    @gender = Gender.find_by_id(params[:post][:gender_id]).title
    @region = Region.find_by_id(params[:post][:region_id]).name
    @civilite = Civilite.find_by_id(params[:post][:civilite_id].to_i).title
    @marital = Marital.find_by_id(params[:post][:marital_id]).status
    @diploma = Diploma.find_by_id(params[:post][:diploma_id]).title
    @domain = Domain.find_by_id(params[:post][:domain_id]).title
    @contract = Contract.find_by_id(params[:post][:contract_id]).title
    @birthdate = Date.new(params[:user][:"birthdate(1i)"].to_i, params[:user][:"birthdate(2i)"].to_i, params[:user][:"birthdate(3i)"].to_i)
    @graduation_year = Date.new(params[:user][:"graduation_year(1i)"].to_i, params[:user][:"graduation_year(2i)"].to_i, params[:user][:"graduation_year(3i)"].to_i)

    #@user = User.create( params[:user] )
  	#@tmp = params[:user][:avatar].tempfile
    #@file = File.join("public", params[:user][:avatar].original_filename)
    #FileUtils.cp @tmp.path.to_s, '/home/duke/Desktop/rails_projects/SoroGuillaume/public', @file#@tmp.path, @file
    
    respond_to do |format|
      if @user.save
        User.update_attributes(:civilite => @civilite,:first_name => @user.first_name, :last_name => @user.last_name, :email => @user.email, :sex => @gender, :birthdate => @birthdate, :birthplace => @user.birthplace, :current_nationality => @user.current_nationality, :region_of_residence => @region, :city_of_residence => @city,  :mobile_number => @user.mobile_number, 
:fix_number => @user.fix_number, :postal_address => @user.postal_address, :marital_status => @marital, :number_of_children => @user.number_of_children, :diploma => @diploma, :school => @user.school, :graduation_year => @graduation_year, :domain => @domain, :job => @user.job, :job_description => @user.job_description, :employer => @user.employer, :contract_type => @contract)
        format.html{ redirect_to(root_path, :notice => 'Votre navigation a ete correctement enregistree.') }
        format.xml{ render :xml => @navigation, :status => :created, :location => @navigation }
      else
        format.html{ render :action => "new" }
        format.xml{ render :xml => @navigation.errors, :status => :unprocessable_entity }
      end
    end
	end
	
	def show
		@user = User.first
	end
end
