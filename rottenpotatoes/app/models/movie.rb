class Movie < ActiveRecord::Base
  def self.with_director(d)
    Movie.where(director: d)
  end
end
