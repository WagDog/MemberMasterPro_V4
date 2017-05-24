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
end
