require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.create(:user) }
  context "required fields" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:birthday) }
  end

  context "user associations" do
    it { should have_many(:watched_leases) }
    it { should have_many(:followed_leases) }
    it { should have_one(:lease) }
  end

  context "admin role" do
    it { user.admin.should eq 0 }
  end

end
