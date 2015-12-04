class Conteo < ActiveRecord::Base
  validates :loc_core, :loc_total, :dia, presence: true
end
