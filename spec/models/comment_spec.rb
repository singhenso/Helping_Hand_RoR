require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should have_many(:comments) }
  it { should belong_to(:commentable) }
  it { should validate_presence_of(:body) }
end
