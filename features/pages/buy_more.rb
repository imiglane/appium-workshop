class BuyMorePage < BasePage
  def initialize
    @title = Element.new(:id, 'buy_title_text')
    @cancel = Element.new(:id, 'buy_cancel_text')
  end

  def visible?
    @title.visible?
    @cancel.visible?
  end

  def close_buy_if_visible
    if @title.any?
      @cancel.click
    end
  end

end
