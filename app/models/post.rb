class Post < ApplicationRecord
    before_save :check_post_content

    private
  
    def check_post_content
      if title.blank? || content.blank?
        throw :abort
      end
    end
end
