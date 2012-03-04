# == Schema Information
#
# Table name: privileges
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'spec_helper'

describe Privilege do
  before do
    @priv = Privilege.new(name: "Add Track",
                          description: "Can add a track to the library for queueing")
  end

  subject { @priv }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should be_valid }

  describe "when name is missing" do
    before { @priv.name = " " }
    it { should_not be_valid }
  end

  describe "when name is too short" do
    before { @priv.name = "a" * 4 }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @priv.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when description is too short" do
    before { @priv.description = "a" * 19 }
    it { should_not be_valid }
  end

  describe "when description is too long" do
    before { @priv.description = "a" * 101 }
    it { should_not be_valid }
  end

  describe "when name already exists" do
    before do
      priv_new = @priv.dup
      priv_new.save
    end
    it { should_not be_valid }
  end
end
