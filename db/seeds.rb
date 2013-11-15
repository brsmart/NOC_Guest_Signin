# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
def adduser(email, password, admin)
  @user = User.invite!(:email => email) do |u|
    u.skip_invitation = true
  end
  token = Devise::VERSION >= "3.1.0" ? @user.instance_variable_get(:@raw_invitation_token) : @user.invitation_token
  User.accept_invitation!(:invitation_token => token, :password => password, :password_confirmation => password)

  if( admin == true )
    @user.update( :admin => true )
  end

  message =  "Created User #{email} with password #{password}"
  if( admin == true )
    message += " as an admin"
  end

  puts message

  @user
end

user=User.create!(:email => "test@test.com", :password => "test12345", :password_confirmation => "test12345")

