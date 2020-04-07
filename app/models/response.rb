# frozen_string_literal: true

class Response < ApplicationRecord
  belongs_to :option
  belongs_to :poll
end
