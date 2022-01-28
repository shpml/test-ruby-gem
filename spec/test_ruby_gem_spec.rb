# frozen_string_literal: true

RSpec.describe TestRubyGem do
  it "has a version number" do
    expect(TestRubyGem::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
