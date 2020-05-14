class ApplicationController < Sinatra::Base

    set :views, 'app/views'
    
    get '/' do
        erb :index
    end

    get '/about' do
        erb :about
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
        @applicant = Applicant.find(params[:id])
        erb :applicant_profile
    end

    get '/applicants/:id/edit' do
        @applicant = Applicant.find(params[:id])
        erb :edit
      end

    patch '/applicants/:id' do
        name = params[:name]
        resume = params[:resume]
        @applicant = Applicant.find(params[:id])
        @applicant.update(name: name, resume: resume)
        redirect "/applicants/#{params[:id]}"
    end

    delete '/applicants/:id' do 
        Applicant.delete(params[:id])
        redirect "/applicants"
    end
    
    get '/applicants' do
        @applicants = Applicant.all
        erb :applicants
    end

    get '/interviewers' do
        @interviewers = Interviewer.all
        erb :interviewers
    end
    get '/interviewers/new' do 
        erb :new_interviewer
    end

    get '/interviewers/:id' do
        @interviewer = Interviewer.find(params[:id])
        erb :interviewer_profile
    end

end
