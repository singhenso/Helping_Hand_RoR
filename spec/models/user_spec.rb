require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:locations) }
  it { should have_many(:comments) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:current_city) }
  it { should validate_presence_of(:current_state) }
  it { should validate_presence_of(:current_country) }
end
