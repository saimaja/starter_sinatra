Applicant.delete_all
Interviewer.delete_all
Interview.delete_all

chine = Interviewer.create(name: "Chine", title: "Flatiron Coach")
paul = Interviewer.create(name: "Paul", title: "Flatiron Instructor")
shannon = Interviewer.create(name: "Shannon", title: "Flatiron Coach")


injae = Applicant.create(name: "Injae", resume: "University of Michigan")
saima = Applicant.create(name: "Saima", resume: "UC Berkeley")
mert = Applicant.create(name: "Mert", resume: "Division 3 Basketball")
davis = Applicant.create(name: "Davis", resume: "University of Virginia")
abhinav = Applicant.create(name: "Abhinav", resume: "Johns Hopkins University")
jesse = Applicant.create(name: "Jesse", resume: "Sleep Specialist")

interview1 = Interview.create(date: Date.new(2020,05,14), interview_score: 95, interviewer: paul, applicant: injae)
interview2 = Interview.create(date: Date.new(2020,03,01), interview_score: 83, interviewer: shannon, applicant: saima)
interview3 = Interview.create(date: Date.new(2020,02,14), interview_score: 90, interviewer: chine, applicant: davis)
interview4 = Interview.create(date: Date.new(2020,06,20), interview_score: 93, interviewer: paul, applicant: mert)
interview5 = Interview.create(date: Date.new(2020,05,14), interview_score: 80, interviewer: chine, applicant: injae)
interview6 = Interview.create(date: Date.new(2020,04,05), interview_score: 95, interviewer: paul, applicant: saima)