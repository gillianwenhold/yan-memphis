class HomepageController < ApplicationController
  def index
    @post = ::Post.first
    @options = @post.options
  end

  def covid_resources; end

  def home; end
end
