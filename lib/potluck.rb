class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes_by_category = []

    @dishes.each do |dish|
      if category == dish.category
        @dishes_by_category << dish
      end
    end

    dishes_by_category
  end

  def menu
    @potluck_menu = {}

    @dishes.each do |dish|
      category_key = @dishes.dish[0].category + "s"
      category = @dishes.dish[0].category

      get_all_from_category(category)

      @potluck_menu[:category_key] = @dishes_by_category

      @dishes.each do |dish|
        if category == dish.category
          @dishes.delete(dish)
        end
      end
    end
  end
end
