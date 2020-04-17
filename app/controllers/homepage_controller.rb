# frozen_string_literal: true

class HomepageController < ApplicationController
  layout "espanol", only: %i[es_covid_resources es_home]
  def index
    @poll = ::Poll.first
    @options = @poll.options
  end

  def covid_resources; end

  def home; end

  def es_covid_resources; end
  def es_home; end
end
