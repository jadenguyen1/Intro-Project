class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category = params[:category]
    @results = []

    if @query.present?
      case @category
      when 'cats'
        @results = Cat.where("name LIKE ?", "%#{@query}%")
      when 'dogs'
        @results = Dog.where("name LIKE ?", "%#{@query}%")
      when 'owners'
        @results = Owner.where("name LIKE ?", "%#{@query}%")
      when 'vets'
        @results = Vet.where("name LIKE ?", "%#{@query}%")
      else
        # Default to searching all categories if 'All' is selected
        @results += Cat.where("name LIKE ?", "%#{@query}%")
        @results += Dog.where("name LIKE ?", "%#{@query}%")
        @results += Owner.where("name LIKE ?", "%#{@query}%")
        @results += Vet.where("name LIKE ?", "%#{@query}%")
      end
    end
  end
end
