class DashboardsController < ApplicationController
  skip_after_action :verify_authorized

  def dashboardlist
    # authorize @booking
    # authorize @goat
    @bookings = policy_scope(Booking.where(user_id: current_user.id))
    @goats = policy_scope(Goat.where(user_id: current_user.id))
  end
end
