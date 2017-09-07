class Collection < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angula
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle:'Ruby on Rails') }
end
