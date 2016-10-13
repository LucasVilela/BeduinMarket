class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    # @product = Product.find(params[:product_id])
    @product = Product.find(params[:id])

  end

  # GET /products/new
  def new
    @product = Product.new

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      product.image = req["public_id"]
      product.save
      redirect_to product_path(product)
    end

  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    if params[:product][:images].present?
      params[:product][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        product.images << req["public_id"]


          respond_to do |format|
          if @product.save
            format.html { redirect_to @product, notice: 'Product was successfully created.' }
            format.json { render :show, status: :created, location: @product }
            else
            format.html { render :new }
            format.json { render json: @product.errors, status: :unprocessable_entity }
          end
        end
      end
    end
  end



  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    product = product.find(params[:id])
    if params[:product][:images].present?
      params[:product][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        product.images << req["public_id"]
      end
    end
    product.update_attributes(product_params)
    product.save
    redirect_to(product_path(product))
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:title, :description, :image_url, :price)
  end

end
