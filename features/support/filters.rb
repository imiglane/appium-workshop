require 'date'
module Filters
  def Filters.transports
    @transports ||= Filter.new(
        cat: 'Transports',
        sub_cats: ["Vieglie auto", "Audi", "Audi A1", "Visi"],
        params: [Hash['name' => 'GADS', 'left' => '1999', 'right' => '2002']]
    )
    @transports
  end
  def Filters.vakances
    @vakances ||= Filter.new(
      cat: 'Vakances',
      sub_cats: ["Aģents"]
  )
    @vakances
  end
  def Filters.property
    @property ||= Filter.new(
      cat: 'Nekustamie īpašumi',
      sub_cats: ["Dzīvokļi", "Rīga", "Centrs", "Izīrē"],
      params: [Hash['name' => 'STĀVI', 'left' => '2', 'right' => '5']]
  )
    @property
  end
  def Filters.searchfilter
    @searchfilter ||= Filter.new(
      cat: 'Meklēšanas filtri'
  )
    @searchfilter
  end
end

class Filter
  attr_reader :name, :cat, :sub_cats, :params
  def initialize(name: '', cat: '', sub_cats: [], params: [])
    if name == ''
      @name = 'UIAuto' + DateTime.now.strftime('%Q')
    else
      @name = name
    end
    @cat = cat
    @sub_cats = sub_cats
    @params = params
  end
end
