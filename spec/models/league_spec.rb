require "rails_helper"

RSpec.describe League, :type => :model do
  let(:league) { build(:league) }

  describe "Validations" do
    # Presence validations
    it { expect(league).to validate_presence_of(:name) }
    it { expect(league).to validate_presence_of(:latitude) }
    it { expect(league).to validate_presence_of(:longitude) }
    it { expect(league).to validate_presence_of(:price) }
    # Numericality validations
    it { expect(league).to validate_numericality_of(:latitude) }
    it { expect(league).to validate_numericality_of(:longitude) }
    it { expect(league).to validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  end
end