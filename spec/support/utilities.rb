include ApplicationHelper

def valid_signin(user)
	fill_in "Email", 		with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
end

def enter_valid_user_info
	fill_in "Name", 				with: "Example User"
	fill_in "Email", 				with: "user@example.com"
	fill_in "Password", 		with: "foobar"
	fill_in "Confirmation", with: "foobar"
end

RSpec::Matchers.define :have_error_message do |message|
	match do |page|
		page.should have_selector('div.alert.alert-error', text: message)
	end
end

RSpec::Matchers.define :have_welcome_message do |message|
	match do |page|
		page.should have_selector('div.alert.alert-success', text: message)
	end
end