# frozen_string_literal: true

class Poll < ApplicationRecord
  has_many :responses
  has_many :options
end
