class Campaign < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    title
  end


  belongs_to :church
end
