module ApplicationHelper
# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "MemberMasterPro"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def show_error_messages(formmodel)
    @model = formmodel
    render 'layouts/model_error_messages'
  end

  def is_active_controller(controller_name, class_name = nil)
    if params[:controller] == controller_name
      class_name == nil ? "active" : class_name
    else
      nil
    end
  end

  def is_active_action(action_name)
    params[:action] == action_name ? "active" : nil
  end

  def avatar_url(user, size)
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end

end
