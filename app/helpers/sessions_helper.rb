module SessionsHelper
  def log_in(customer)
    session[:customer_id] = customer.id
    session[:customer_email] = customer.Email
    puts(session[:customer_email])
  end
  def current_user
    @current_user ||= Customer.find_by(id: session[:customer_id])
  end
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  # Logs out the current user.
  def log_out
    session.delete(:customer_id)
    @current_user = nil
  end
end