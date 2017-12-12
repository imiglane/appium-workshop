class FiltrePage < BasePage
  def initialize
    @delete_button = Element.new(:id, 'delete_filter')
    @save_button = Element.new(:id, 'save_filter')
    @delete_pop_up = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Dzēst filtru?")]')
    @delete_confirm = Element.new(:xpath, '//android.widget.Button[contains(@text, "DZĒST")]')
  end

  def visible?
    @delete_button.visible?
    @save_filter.visible?
    @delete_pop_up.visible?
  end

  def delete
    @delete_button.click
    if @delete_pop_up.visible?
      @delete_confirm.click
    end
  end
end
