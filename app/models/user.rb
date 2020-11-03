class User < ApplicationRecord
    has_many :events, through: :attendances
    has_many :events
end
