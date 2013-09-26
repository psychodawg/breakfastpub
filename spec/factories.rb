FactoryGirl.define do
  factory :user do
    name     "Shane"
    email    "shbburke@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
