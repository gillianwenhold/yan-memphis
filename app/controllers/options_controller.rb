# frozen_string_literal: true

class OptionsController < ApplicationController
  def show
    @poll = ::Poll.find_by(title: "In the midst of the COVID-19 crisis, what resources do you need right now?")
    @option = Option.find(params[:id])
  end
end
