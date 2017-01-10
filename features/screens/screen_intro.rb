class ScreenIntro < ScreenBase
  attr_accessor :driver
  def initialize(driver)
    @base = element(:id, 'content')
    @button_intro_close = element(:id, 'close_intro')
    @button_select_important = element(:id, 'intro_footer_image')
    @text_header = element(:id, 'intro_text_header')
    @text_small = element(:id, 'intro_text_footer')
    @photo_web = element(:id, 'page_image')
    @driver = driver
  end

  def visible?
    @driver.find_element(@base[:type], @base[:value])
    @driver.find_element(@button_intro_close[:type], @button_intro_close[:value])
    @driver.find_element(@button_select_important[:type], @button_select_important[:value])
    @driver.find_element(@text_header[:type], @text_header[:value])
    @driver.find_element(@text_small[:type], @text_small[:value])
    @driver.find_element(@photo_web[:type], @photo_web[:value])
  end
end
