module UsersHelper
  def current_user? user
    user == current_user
  end
  def user_status_image user
    image_tag path_to_image("user_#{user.online? ? 'on' : 'off'}line.gif")
  end

  def can_edit? post, editable=false
    return true if user_signed_in? and current_user.admin?
    return true if post.user_id.nil? and !editable and post.editable
    return false unless user_signed_in? and post.user_id.nil?
    return (post.user_id == current_user.id or current_user.admin?) if editable

    post.user_id == current_user.id or post.editable or current_user.admin?
  end
end
