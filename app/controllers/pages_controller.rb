class PagesController < ApplicationController
  def index
  end
  
  def turbo_frame
    @args = 1
  end
  
  def dummy
  end
  
  def stream
    render turbo_stream: turbo_stream.append(
      "turbo_stream",
      partial: "stream"
    )
  end
end
