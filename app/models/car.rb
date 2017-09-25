class Car < ApplicationRecord
  def self.search(params)
    if params[:term].present?
      where('Model LIKE ?', "%#{params[:term]}%")
    elsif params[:location].present?
      where('Location LIKE ?', "%#{params[:location]}%")
    elsif params[:status].present?
      where('Status LIKE ?', "%#{params[:status]}%")
    elsif params[:style].present?
      where('Style LIKE ?', "%#{params[:style]}%")
    elsif params[:manufacturer].present?
      where('Manufacturer LIKE ?', "%#{params[:manufacturer]}%")
    else
      all
    end
  end
end
