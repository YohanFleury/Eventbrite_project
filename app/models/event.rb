class Event < ApplicationRecord
    validates :start_date, presence: true
    validates :duration, numericality: {greater_than: 0}
    validates :title, length: { in: 5..140}
    validates :description, length: { in: 20..1000}
    validates :price, presence: numericality: {greater_than: 0, less_than: 1000}
    validates :location, presence: true

    has_many :attendances
    has_many :users, throught: :attendances
    belongs_to :user
end
