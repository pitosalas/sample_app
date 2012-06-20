require 'factory_girl'
require 'awesome_print'
require 'faker'
require 'pp'

class Airplane
  attr_accessor :type, :tail_number
  def save!
  end
end

FactoryGirl.define do
  factory :airplane do
    type        "Boeing 708"
    sequence(:tail_number) {|n| "AA#{n}90-11" }
  end
end

a0 = FactoryGirl.create(:airplane)

a1 = FactoryGirl.create :airplane, type: "Boeing 747"

#ap a0
#ap a1

ap Faker::Config.locale='de'
#ap Faker::Name.name
#ap Faker::Internet.email
ap Faker::Lorem.paragraph(10)
ap Faker::PhoneNumber.phone_number
ap Faker::Company.bs
