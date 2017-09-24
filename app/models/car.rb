class Car < ApplicationRecord
  def self.search(term)
    if term
      where('Model LIKE ?', "%#{term}%")
    else
      all
    end
  end
end
