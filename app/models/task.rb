class Task < ApplicationRecord
  validates :year_id,             presence: true
  validates :month_id,            presence: true
  validates :day_id,              presence: true
  validates :dayofweek_id,        presence: true
  validates :weather_id,          presence: true
  validates :title, length: { minimum: 1, maximum: 24}, presence: true
  validates :sentence,            presence: true
  validates :user_id,             presence: true


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :year
  belongs_to_active_hash :month
  belongs_to_active_hash :day
  belongs_to_active_hash :dayofweek
  belongs_to_active_hash :weather

  belongs_to :user, optional: true
end
