require 'fotofetch'

class Idea < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  def image
    Fotofetch::Fetch.new.fetch_links(self.title)
  end
end
