class User < ApplicationRecord
    # validates :name, presence: true
#     before_validation :normalize_name, on: :create
#     before_validation :remove_whitespaces
      after_validation :set_status


      after_initialize do |user|
        puts "You have initialized an object!"
      end
    
      after_find do |user|
        puts "You have found an object!"
      end


      after_touch do |user|
        puts "You have touched an object"
      end



#     private
#     def normalize_name
#       self.name = name.downcase.titleize
#     end

   

#    private
#     def remove_whitespaces
#       name.strip!
#     end

 private
  def set_status
   self.name = errors.empty?
  end
end
