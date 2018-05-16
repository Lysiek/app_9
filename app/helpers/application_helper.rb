module ApplicationHelper
  def full_title page_title = ""
    base_title = t ".basetitle"
    page_title.empty? ? basetitle : page_title + " | " + base_title
  end
end
