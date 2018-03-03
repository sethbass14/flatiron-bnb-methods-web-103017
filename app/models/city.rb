class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods
  has_many :reservations, :through => :listings

  extend Reservable::ClassMethods
  include Reservable::InstanceMethods

  def city_openings(start_date, end_date)
    openings(start_date, end_date)
  end

end
