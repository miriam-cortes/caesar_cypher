class DecodingsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
  end

  def new
  end

  def show
    @message = Caesar.decode(params['shift'], params['message'].upcase)
  end
end
