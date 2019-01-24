feature "Infrastructure testing" do
    scenario "starts web app and displays content" do
        visit '/'
        expect(page).to have_content('Hello there!')
    end
end

feature "Enter names" do
    scenario "submitting names & see it displayed" do
        visit "/"
        fill_in("your_name", with: "Thomas")
        click_on("Go!")
        expect(page).to have_content("Thomas")
    end
end

feature "Enter your birthday" do
    scenario "enter your birthday and see it displayed" do
    visit "/"
    fill_in("date", with: "13")
    select("October", from: "month")
    click_on("Go!")
    expect(page).to have_content("13 of october")
  end
end
