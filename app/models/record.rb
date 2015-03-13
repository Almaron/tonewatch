class Record < ActiveRecord::Base

  belongs_to :user

  validates_numericality_of :user_id, :upper_tone, :lower_tone, :pulse
  validates_presence_of :user_id, :upper_tone, :lower_tone

end