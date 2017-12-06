class FilterPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Jobs")]')
    @button_apply = Element.new(:id, 'save_filter')
    @button_delete = Element.new(:id, 'delete_filter')
  end

  def visible?
    @title.visible?
    @button_apply.visible?
    @button_delete.visible?
  end

  def delete_filter
    @button_delete.click
  end
end
