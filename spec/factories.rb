FactoryGirl.define do
	factory :user do
		name 		 "Jason Walsh"
		email 	 "jw@mail.com"
		password "password"
		password_confirmation "password"
	end
end