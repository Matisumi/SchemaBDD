require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  def setup  
    @comment = Comment.new(user_id:1, pin_id:1, body:"this is a comment")
  end

  test "body should be present" do
    @comment.body = "     "
    assert_not @comment.valid?
	end
end
