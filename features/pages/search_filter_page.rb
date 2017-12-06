class SearchFilterPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
    @sub_fil = ElementGroup.new(:id, 'row_filter_name')
  end

  def visible?
    @title.visible?
    @sub_fil.visible?
  end

  def open_sub_category(name)
    @sub_fil.scroll_to_exact(name).click
  end
end
