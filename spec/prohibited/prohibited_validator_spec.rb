RSpec.describe ProhibitedUsernames do
  require 'active_record'
  class User < ActiveRecord::Base
    attr_accessor :username
    validates :username, prohibited: true
  end

  it "detects prohibited usernames" do
    inst = User.new
    inst.username = "ROOT"
    expect(inst.valid?).to eq(false)
    expect(inst.errors.first).to eq([:username, "ROOT is reserved"])
  end
end
