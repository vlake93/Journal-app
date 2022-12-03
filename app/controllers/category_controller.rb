class CategoryController < ApplicationController

  def index
    @category = Category.all

    def destroy
      @category = Category.find(params[:id])
      if @category.present?
        @category.destroy
      end
      redirect_to category_index_path(@category)
    end

  end

  def show
    @category = Category.find(params[:id])
    render :show
  end

  def new 
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to category_index_path
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
    render :edit
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(params.require(:category).permit(:name, :details))
      flash[:success] = "category item successfully updated!"
      redirect_to category_index_path(@category)
    else
      flash.now[:error] = "category item update failed"
      render :edit
    end
  end

  # def destroy
  #   @category = Category.find(params[:id])
  #   if @category.present?
  #     @category.destroy
  #   end
  #   redirect_to category_index_path(@category)
  # end
  
  private

  def category_params
    params.require(:category).permit(:name, :details)
  end
end
