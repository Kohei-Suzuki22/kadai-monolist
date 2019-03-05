class Have < Ownership
  
  def self.ranking 
    self.group(:item_id).order("count(item_id) DESC").limit(10).count(:item_id)
  end
end
