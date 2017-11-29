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

    def page_paremeters
        @page_paremeters ||= ParametersPage.new
        @page_paremeters
    end
    def page_menu
        @page_menu ||= MenuPage.new
        @page_menu
    end

    def page_search_filter
        @page_search_filter ||= SearchFilterPage.new
        @page_search_filter
    end

    def page_buy
        @page_buy ||= BuyMorePage.new
        @page_buy
    end

    def page_filter
        @page_filter ||= FilterPage.new
        @page_filter
    end


end
