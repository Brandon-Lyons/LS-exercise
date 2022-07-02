require "test_helper"

class LeagueTest < ActiveSupport::TestCase
  # Validations
  test "should validate name presence" do
    league = League.new
    assert_not league.save, "Saved league without a name"
  end
end
