# frozen_string_literal: true

class Resource < ApplicationRecord
  scope :depressed_lonely_anxious, -> { where(published: true, category: "depressed_lonely_anxious") }
  scope :entertainment_self, -> { where(published: true, category: "entertainment_self") }
  scope :entertainment_others, -> { where(published: true, category: "entertainment_others") }
  scope :education, -> { where(published: true, category: "education") }
end
