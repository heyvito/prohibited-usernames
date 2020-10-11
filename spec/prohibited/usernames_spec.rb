RSpec.describe ProhibitedUsernames do
  it "has a version number" do
    expect(ProhibitedUsernames::VERSION).not_to be nil
  end

  it "detects prohibited usernames" do
    expect(ProhibitedUsernames::include?("ROOT")).to eq(true)
  end
end
