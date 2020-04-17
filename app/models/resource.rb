# frozen_string_literal: true

class Resource < ApplicationRecord
  scope :english_published, -> { where(published: true, language: "english") }
end
