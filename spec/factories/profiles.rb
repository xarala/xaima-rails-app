# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    sequence(:email){ |i| "#{i}@xaima.org"}
    password 'password'
    password_confirmation 'password'
    
    factory :unconfirmed_password do
     password '_dfjhla_11-_'
    end
    
    factory :confirmed_password do
     password '_dfjhla_11-_'
    password_confirmation  '_dfjhla_11-_'
    end    
    
  end
end
