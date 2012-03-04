require 'spec_helper'

describe "Pages" do

  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Home') }
    it { should have_selector('title', text: full_title('Home')) }
  end

end
