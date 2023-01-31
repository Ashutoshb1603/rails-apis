module CatBlock
  class CatsController < ApplicationController
    def index
      @cats = Cat.all
      render json: @cats , status: :ok
    end

    def create
      @cat = Cat.new(cat_params)
      if @cat.save
        render json: @cat , status: :created
      else
        render json: {errors: @cat.errors.full_message} , status: :unprocessable_entity 
      end
    end

    def destroy
      @cat = Cat.find(params[:id])
      if @cat.destroy
        render json: {message: "cat expelled successfully"} , status: :ok
      else
        render json: {message: "cat not found"} ,  status: :not_found
      end
    end

    private
    def cat_params
      params.permit(:name)
    end

  end
end