class CookedMealsController < ApplicationController
  before_action :set_cooked_meal, only: [:show, :edit, :update, :destroy]

  # GET /cooked_meals
  # GET /cooked_meals.json
  def index
    @cooked_meals = CookedMeal.all
  end

  # GET /cooked_meals/1
  # GET /cooked_meals/1.json
  def show
  end

  # GET /cooked_meals/new
  def new
    @cooked_meal = CookedMeal.new
  end

  # GET /cooked_meals/1/edit
  def edit
  end

  # POST /cooked_meals
  # POST /cooked_meals.json
  def create
    @cooked_meal = CookedMeal.new(cooked_meal_params)

    respond_to do |format|
      if @cooked_meal.save
        format.html { redirect_to @cooked_meal, notice: 'Cooked meal was successfully created.' }
        format.json { render :show, status: :created, location: @cooked_meal }
      else
        format.html { render :new }
        format.json { render json: @cooked_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cooked_meals/1
  # PATCH/PUT /cooked_meals/1.json
  def update
    respond_to do |format|
      if @cooked_meal.update(cooked_meal_params)
        format.html { redirect_to @cooked_meal, notice: 'Cooked meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @cooked_meal }
      else
        format.html { render :edit }
        format.json { render json: @cooked_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cooked_meals/1
  # DELETE /cooked_meals/1.json
  def destroy
    @cooked_meal.destroy
    respond_to do |format|
      format.html { redirect_to cooked_meals_url, notice: 'Cooked meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cooked_meal
      @cooked_meal = CookedMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cooked_meal_params
      params.require(:cooked_meal).permit(:Name, :Recipe)
    end
end
