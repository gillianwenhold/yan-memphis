# frozen_string_literal: true

class ResourcesController < ApplicationController
  def depressed_lonely_anxious
    @resources = Resource.depressed_lonely_anxious
  end

  def entertainment_self
    @resources = Resource.entertainment_self
  end

  def entertainment_others
    @resources = Resource.entertainment_others
  end

  def education
    @resources = Resource.education
  end
end
