class Book < ApplicationRecord
  class << self
    def where_name_like(freeword)
      where("name LIKE ?", "%#{freeword}%")
    end

    def where_name_like_with_security_risk(freeword)
      where("name LIKE '%#{freeword}%'")
    end
  end
end
