Factory.define :user do |user|
  user.name                  "foo"
  user.email                 "foo@foo.com"
  user.password              "123456"
  user.password_confirmation "123456"
end