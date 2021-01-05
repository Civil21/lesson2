class ApplicationController < ActionController::Base
  $PER_PAGE = 12

  private

  def page
    @page ||= params[:page].to_i || 1
  end
end
