# frozen_string_literal: true

class ResourcesController < ApplicationController
  def depressed_lonely_anxious
    @resources = Resource.english_published.where(category: "depressed_lonely_anxious")
  end

  def entertainment_self
    @resources = Resource.english_published.where(category: "entertainment_self")
  end

  def entertainment_others
    @resources = Resource.english_published.where(category: "entertainment_others")
  end

  def education
    @resources = Resource.english_published.where(category: "education")
  end

  def legit_info
    @resources = Resource.english_published.where(category: "legit_info")
  end

  def activism
    @resources = Resource.english_published.where(category: "activism")
  end

  def food_water
    @resources = Resource.english_published.where(category: "food_water")
  end

  def internet_tech
    @resources = Resource.english_published.where(category: "internet_tech")
  end

  def employment_money
    @resources = Resource.english_published.where(category: "employment_money")
  end

  def spanish_resources
    @resources = Resource.english_published.where(category: "spanish_resources")
  end

  def undocumented_resources
    @resources = Resource.english_published.where(category: "undocumented_resources")
  end

  def childcare
    @resources = Resource.english_published.where(category: "childcare")
  end

  def lgbt
    @resources = Resource.english_published.where(category: "lgbt")
  end

  def unsafe_home
    @resources = Resource.english_published.where(category: "unsafe_home")
  end
end
