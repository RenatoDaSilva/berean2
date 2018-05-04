class Entry < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    
  end


  acts_as_list add_new_at: :top
  default_scope { order(:position) }

  belongs_to :church
  belongs_to :account
  belongs_to :member
  belongs_to :supplier
end
