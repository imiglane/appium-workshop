class SavedFiltresPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
    @saved_filter = ElementGroup.new(:id, 'row_filter_name')
  end

  def visible?
    @title.visible?
    @saved_filter.visible?
  end

  def open_sub_category
    @saved_filter.click
  end
end
