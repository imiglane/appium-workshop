class SavedFiltresPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
    @saved_filter = ElementGroup.new(:id, 'row_filter_date')
  end

  def visible?
    @saved_filter.visible?
  end

  def open_sub_category(name)

    if @saved_filter.visible?
      @saved_filter.click_by_text(name)
    else
      @saved_filter.refresh
      @saved_filter.click_by_text(name)
    end
  end
end
