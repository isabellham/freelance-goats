class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
homepage1
master
  def home
  end
end
