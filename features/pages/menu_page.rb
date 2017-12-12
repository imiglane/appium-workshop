class MenuPage < BasePage
  def initialize
    @filter = Element.new(:class_name, 'android.widget.ImageView')
    @menu = Element.new(:class_name, 'android.widget.ImageButton')
    @menu_options = ElementGroup.new(:id, 'item_name')
  end

  def visible?
    @filter.visible?
  end

  def click
     @menu.click
   end
  def open_search_filtres(name)
      @menu_options.click_by_text(name)
  end
end
