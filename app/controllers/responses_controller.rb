# frozen_string_literal: true

class ResponsesController < ApplicationController
  def new
    @poll = ::Poll.find_by(title: "In the midst of the COVID-19 crisis, what resources do you need right now?")
    @options = @poll.options
    @options_collection = @options.map{ |o| [o.name, o.id] }
    @response = Response.new
  end

  def create
    @option = Option.find(params[:response][:option_id])
    @response = Response.new(response_params)
    if @response.save
      redirect_to "/options/#{@option.id}"
    else
      render :new
    end
  end
  
  private

  def response_params
    params.require(:response)&.permit!
  end
end
