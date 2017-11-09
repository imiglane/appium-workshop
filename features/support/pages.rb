class Pages
  def page_intro
    @page_intro ||= IntroPage.new
    @page_intro
  end

  def page_create_filter
    @page_create_filter ||= CreateFilterPage.new
    @page_create_filter
  end

  def page_sub_category
    @page_sub_category ||= SubCategoryPage.new
    @page_sub_category
  end

  def page_sub_auto
    @page_sub_auto ||= SubCategoryAuto.new
    @page_sub_auto
  end

  def page_sub_model
    @page_sub_model ||= SubCategoryModel.new
    @page_sub_model
  end

  def page_sub_action
    @page_sub_action ||= SubCategoryAction.new
    @page_sub_action
  end

  def page_sub_parameter
    @page_sub_parameter ||= SubCategoryParameter.new
    @page_sub_parameter
  end

end
