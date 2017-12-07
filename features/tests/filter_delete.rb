class FilterTest
  def initialize(pages, filters)
    @pages = pages
    @filters = filters
  end

  def close_intro
    @pages.page_intro.close_intro_if_visible
    @pages.page_create_filter.visible?
  end


end
