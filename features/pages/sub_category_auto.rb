class SubCategoryAuto < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Vieglie auto")]')
    @sub_cat = Element.new(:id, 'category_name')
  end

  def visible?
    @title.visible?
    @sub_cat.visible?
  end

  def open_sub_auto(name)
    @sub_cat.scroll_to_exact(name).click
  end
end
