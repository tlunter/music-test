require 'spec_helper'

describe UserPrivilege do
  let (:privilege) { FactoryGirl.create(:privilege) }
  let (:user) { FactoryGirl.create(:user) }
  before do
    @user_privilege = user.user_privileges.build(privilege: privilege)
  end

  subject { @user_privilege }

  it { should respond_to(:user) }
  it { should respond_to(:privilege) }

  describe "when user is missing" do
    before { @user_privilege.user = nil }
    it { should_not be_valid }
  end

  describe "when privilege is missing" do
    before { @user_privilege.privilege = nil }
    it { should_not be_valid }
  end
end
