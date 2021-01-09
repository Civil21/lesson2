class ApplicationController < ActionController::Base
  $PER_PAGE = 12

  private

  def page
    @page ||= (params[:page] || 1).to_i
  end
end
