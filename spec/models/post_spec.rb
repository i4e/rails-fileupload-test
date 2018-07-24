require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { create(:post) }

  it "with valid params" do
    expect(post.valid?).to eq true
  end
end