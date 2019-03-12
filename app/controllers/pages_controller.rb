class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :skip_footer, only: [:home]

  def home
  end
end
