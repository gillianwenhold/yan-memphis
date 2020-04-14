# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    @poll = ::Poll.first
    @options = @poll.options
  end

  def covid_resources; end

  def home; end
end
