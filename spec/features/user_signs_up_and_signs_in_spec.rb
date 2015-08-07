require "rails_helper"

feature "User signs up" do
  scenario "successfully" do
    visit sign_up_path

    fill_form_and_submit(
      :user,
      :new,
      email: "test@example.com",
      password: "foobar"
    )

    expect(page).to have_text("Signed in as: test@example.com")
  end
end
