class Member < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    name
  end


  belongs_to :church
end
