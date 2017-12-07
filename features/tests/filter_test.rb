class FilterTest
  def initialize(pages, filters)
    @pages = pages
    @filters = filters
  end

  def close_intro
    @pages.page_intro.close_intro_if_visible
    @pages.page_create_filter.visible?
  end

  def open_filter_params
    @pages.page_create_filter.open_category(@filters.transports.cat)
    @filters.transports.sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end

  def set_filter_params
    @pages.page_paremeters.set_name(@filters.transports.name)
    @filters.transports.params.each do |param|
      @pages.page_paremeters.set_parameter(param)
    end
  end

  def submit_filter
    set_filter_params
    @pages.page_paremeters.save_filter
  end

  def open_vacancy_params
    @pages.page_create_filter.open_category(@filters.vakances.cat)
    @filters.vakances.sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end

  def set_vacancy_params
    @pages.page_paremeters.set_name(@filters.vakances.name)
    @filters.vakances.params.each do |param|
      @pages.page_paremeters.set_parameter(param)
    end
  end
  def open_property_params
    @pages.page_create_filter.open_category(@filters.property.cat)
    @filters.property.sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end

  def set_property_params
    @pages.page_paremeters.set_name(@filters.property.name)
    @filters.property.params.each do |param|
      @pages.page_paremeters.set_parameter(param)
    end
  end
  def submit_vacancy
    set_vacancy_params
    @pages.page_paremeters.save_filter
  end

  def close_buy_more 
    @pages.page_buy.close_buy_if_visible
  end
  def open_menu
    @pages.page_menu.click
  end

  def open_search_filtr("Meklēšanas filtri")
    @pages.page_menu.open_search_filtres
  end

  def open_saved_filter
    @pages.page_saved_filtres.open_sub_category
  end
end
