class CreateFilterPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Izveidot filtru")]')
    @menu = Element.new(:class_name, 'android.widget.ImageButton')
    @titles_category = ElementGroup.new(:id, 'main_row_text')
    @sett = ElementGroup.new(:id, 'item_name')
    @titleset = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Iestatījumi")]')
    @setting1 = ElementGroup.new(:id, 'settings_one')
  end

  def visible?
    @title.visible?
    @menu.visible?
    @titles_category.visible?
  end

  def click
    @menu.click
  end

  def open_category(name)
    @titles_category.click_by_text(name)
  end
  def open_category2(name)
    @sett.click_by_text(name)
  end

  def visible2?
    @title.visible?
    @setting1.visible?
  end
end
