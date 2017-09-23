require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_url
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post reservations_url, params: { reservation: { Amount: @reservation.Amount, Checkout_Date: @reservation.Checkout_Date, Checkout_Status: @reservation.Checkout_Status, Customer_Email: @reservation.Customer_Email, Drop_Off_Location: @reservation.Drop_Off_Location, License_Tag: @reservation.License_Tag, Reservation_Id: @reservation.Reservation_Id, Reservation_Status: @reservation.Reservation_Status, Return_Date: @reservation.Return_Date } }
    end

    assert_redirected_to reservation_url(Reservation.last)
  end

  test "should show reservation" do
    get reservation_url(@reservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservation_url(@reservation)
    assert_response :success
  end

  test "should update reservation" do
    patch reservation_url(@reservation), params: { reservation: { Amount: @reservation.Amount, Checkout_Date: @reservation.Checkout_Date, Checkout_Status: @reservation.Checkout_Status, Customer_Email: @reservation.Customer_Email, Drop_Off_Location: @reservation.Drop_Off_Location, License_Tag: @reservation.License_Tag, Reservation_Id: @reservation.Reservation_Id, Reservation_Status: @reservation.Reservation_Status, Return_Date: @reservation.Return_Date } }
    assert_redirected_to reservation_url(@reservation)
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete reservation_url(@reservation)
    end

    assert_redirected_to reservations_url
  end
end
