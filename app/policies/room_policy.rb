class PostPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @room = room
  end

  def update?
    user.admin? or not post.published?
  end
end