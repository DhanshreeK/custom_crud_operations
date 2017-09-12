class ProductsController < ApplicationController
	def new_product
		@product = Product.new
		@products = Product.all
	end

	def create_product
		@product = Product.new(product_params)
		@product.save
		redirect_to new_product_products_path
	end

	def show_product
		@product = Product.find(params[:id])
	end

	def edit_product
		@product = Product.find(params[:id])
	end

	def update_product
		@product = Product.find(params[:id])
		@product.update(product_params)
		redirect_to new_product_products_path
	end

	def destroy_product
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to new_product_products_path
	end

	private 
	def product_params
		params.require(:product).permit!
	end
end
