# frozen_string_literal: true

require "rails_helper"

RSpec.describe Option, type: :model do
  it 'has structure', :aggregate_failures do
    expect(subject).to have_db_column(:id).of_type(:integer)
    expect(subject).to have_db_column(:name).of_type(:string)
    expect(subject).to have_db_column(:poll_id).of_type(:integer)
    expect(subject).to have_db_column(:created_at).of_type(:datetime)
    expect(subject).to have_db_column(:updated_at).of_type(:datetime)
  end

  it 'has associations', :aggregate_failures do
    expect(subject).to belong_to(:poll)
    expect(subject).to have_many(:responses)
  end
end