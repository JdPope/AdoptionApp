require 'spec_helper'

describe "GET '/dogs' - Dog Index" do
  it 'shows the index of dogs' do
    visit '/dogs'
    expect(page.body).to have_field(:user_name)
  end
end
