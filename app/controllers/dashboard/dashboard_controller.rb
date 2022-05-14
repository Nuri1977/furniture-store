# frozen_string_literal: true

module Dashboard
  class DashboardController < ApplicationController
    layout 'dashboard'
    before_action :authenticate_user!
  end
end