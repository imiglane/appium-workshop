class MenuPage < BasePage
  def initialize
    @filter = Element.new(:class_name, 'android.widget.ImageView')
    @menu = Element.new(:class_name, 'android.widget.ImageButton')
    @filtres_category = ElementGroup.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
  end

  def visible?
    @filter.visible?
    @filtres_category.visible?
  end

  def click
     @menu.click
   end
  def open_search_filtres(name)
    @filtres_category.click_by_text(name)
  end
end
