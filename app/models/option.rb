# frozen_string_literal: true

class Option < ApplicationRecord
  belongs_to :poll
  has_many :responses
end
