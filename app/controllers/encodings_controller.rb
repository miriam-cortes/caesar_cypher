class EncodingsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index

  end

  def new
  end

  def show
    # params = {'shift' => "s", 'message' => 'hello world'} ## WE DON'T NEED THIS LINE BUT THAT'S WHAT IT LOOKS LIKE
    @message = Caesar.encode(params['shift'], params['message'])
  end
end
