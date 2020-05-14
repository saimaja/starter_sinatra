class ApplicationController < Sinatra::Base

    set :views, 'app/views'
    get '/' do
        erb :index
    end

    get '/about' do
        erb :about
    end

    get '/applicants' do
        @applicants = Applicant.all
        erb :applicants
    end

    get '/applicants/new' do
        erb :new_applicant
    end

    post '/applicants' do
        applicant_name = params[:name]
        applicant_resume = params[:resume]
        @new_applicant = Applicant.create(name: applicant_name, resume: applicant_resume)
        # binding.pry
        redirect "/applicants/#{@new_applicant.id}"
    end

    get '/applicants/:id' do
        binding.pry
        @applicant = Applicant.find(params[:id])
        erb :applicant_profile
    end




   
   
    get '/interviewer/new' do 
        erb :new_interviewer
    end

end
