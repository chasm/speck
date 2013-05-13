class Artist < ActiveRecord::Base
  attr_accessible :age, :genre, :instrument_played, :is_available,
    :last_album_released_on, :name, :too_old_to_rock_n_roll
    
  validates :name, presence: true
  validates :instrument_played, inclusion: { in: ["guitar", "drums", "bass"] }
  validates :age, numericality: { less_than: 100, greater_than: 12 }
end
