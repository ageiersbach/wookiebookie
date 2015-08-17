require 'spec_helper'

describe 'home page' do
  it 'welcomes the user with a new race' do
    visit '/'
    expect(page).to have_content('Race!!')
  end
end
