# frozen_string_literal: true

class ResourcesController < ApplicationController
  layout "espanol", only: %i[es_depressed_lonely_anxious es_entertainment_self es_entertainment_others es_education es_legit_info es_activism es_food_water es_internet_tech es_employment_money es_spanish_resources es_undocumented_resources es_childcare es_lgbt es_unsafe_home]
  
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

  def es_depressed_lonely_anxious
    @resources = Resource.spanish_published.where(category: "depressed_lonely_anxious")
  end

  def es_education
    @resources = Resource.spanish_published.where(category: "education")
  end

  def es_legit_info
    @resources = Resource.spanish_published.where(category: ["legit_info", "spanish_resources"])
  end

  def es_food_water
    @resources = Resource.spanish_published.where(category: "food_water")
  end

  def es_internet_tech
    @resources = Resource.spanish_published.where(category: "internet_tech")
  end

  def es_undocumented_resources
    @resources = Resource.spanish_published.where(category: "undocumented_resources")
  end

  def es_lgbt
    @resources = Resource.spanish_published.where(category: "lgbt")
  end

  def es_unsafe_home
    @resources = Resource.spanish_published.where(category: "unsafe_home")
  end
end
