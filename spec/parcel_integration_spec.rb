require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application

describe("The path to the parcel page", {:type => :feature}) do
  it("Presents a form to input shipping information and a button leading to a page displaying shipping price") do
    visit("/")
    fill_in("width", :with => "5")
    fill_in("height", :with => "5")
    fill_in("length", :with => "4")
    fill_in("weight", :with => "10")
    fill_in("speed", :with => "1")
    fill_in("distance", :with => "100")
    click_button("submit")
    expect(page).to(have_content("$11.00"))
  end
end
