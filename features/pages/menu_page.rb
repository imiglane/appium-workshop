class MenuPage < BasePage
  def initialize
    @filter = Element.new(:class_name, 'android.widget.ImageView')
    @filtres_category = ElementGroup.new(:xpath, '//android.widget.TextView[contains(@text, "Iestatījumi")]')
  end

  def visible?
    @filter.visible?
    @filtres_category.visible?
  end

  def open_settings(name)
    @filtres_category.click_by_text(name)
  end


end
