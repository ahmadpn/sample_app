FactoryGirl.define do

  factory :user do
    name "John"
    email  "user1@example.com"
    password "foobar1"
    password_confirmation "foobar1"
  end
  factory :user1, class: User do
    name "John"
    email  "user1@example.com"
    password "foobar1"
    password_confirmation "foobar1"
  end
end