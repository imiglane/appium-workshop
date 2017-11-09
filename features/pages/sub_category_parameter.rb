class SubCategoryParameter < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Parametri")]')
    @sub_title = Element.new(:id, 'param_filter_name')
    @sub_price = Element.new(:xpath, '//android.widget.RelativeLayout[contains(@text, "CENA")]')
    @sub_year = Element.new(:xpath, '//android.widget.RelativeLayout[contains(@text, "GADS")]')
    @sub_run = Element.new(:xpath, '//android.widget.RelativeLayout[contains(@text, "NOBRAUKUMS")]')
    @sub_capacity = Element.new(:xpath, '//android.widget.RelativeLayout[contains(@text, "TILPUMS")]')
  end

  def visible?
    @title.visible?
    @sub_title.visible?
    @sub_price.visible?
    @sub_year.visible?
    @sub_run.visible?
    @sub_capacity.visible?
  end

  def click_in_field()
    @sub_title.click()
  end
end
