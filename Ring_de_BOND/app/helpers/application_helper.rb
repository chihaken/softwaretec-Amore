module ApplicationHelper

  # ページごとの完全なタイトルを返す
  def full_title(page_title = '')
    base_title = "Ring De BOND"
    if page_title. empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def menu_link_to(text, path)
    link_to_unless_current(text, path){ content_tag(:span,text)}
  end

end
