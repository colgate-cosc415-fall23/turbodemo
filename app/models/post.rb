class Post < ApplicationRecord
    # inside model class
    after_commit :broadcast_post

protected
 def broadcast_post
   broadcast_replace_later_to 'posts', partial: 'posts/post'
   # can leave off target and partial if you abide by rails naming conventions...
 end
end
