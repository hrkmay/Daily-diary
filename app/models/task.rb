class Task < ApplicationRecord
  validates :year_id,             presence: true
  validates :month_id,            presence: true
  validates :day_id,              presence: true
  validates :dayofweek_id,        presence: true
  validates :weather_id,          presence: true
  validates :title,               presence: true
  validates :sentence,            presence: true


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :year
  
end
