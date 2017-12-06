class SettingTest
  def initialize(pages)
    @pages = pages
  end

  def close_buy
    @pages.page_buy.close_buy_if_visible
  end

  def open_menu
    @pages.page_create_filter.click
  end
  def open_settings
    @pages.page_create_filter.open_category2("Iestatījumi")
  end

  def press_settings
    @pages.page_create_filter.visible2?
  end

end
