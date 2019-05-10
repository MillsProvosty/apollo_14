require 'rails_helper'

RSpec.describe 'When I visit astronauts'do
  describe 'I see a list of astronauts with the following info' do
    before :each do
      @astronaut_1 = Astronaut.create!(name: "Neil", age: 34, job: "Pilot")
    end

    it 'shows name, age, job' do
      visit astronauts_path
      save_and_open_page
      expect(page).to have_content(@astronaut_1.name)
      expect(page).to have_content(@astronaut_1.age)
      expect(page).to have_content(@astronaut_1.job)

    end

    # it 'shows average age of all astronauts' do
    # As a visitor,
    # When I visit '/astronauts'
    # I see the average age of all astronauts.
    #
    # (e.g. "Average Age: 34")


  end
end
