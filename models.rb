
class User < ActiveRecord::Base
	has_many :posts #user.post
end

class Post < ActiveRecord::Base
  belongs_to :user # post.user
end
  