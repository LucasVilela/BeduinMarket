class WishListItemsController < ApplicationController
  before_action :set_wish_list_item, only: [:show, :edit, :update, :destroy]

  # GET /wish_list_items
  # GET /wish_list_items.json
  def index
    @wish_list_items = WishListItem.all
  end

  # GET /wish_list_items/1
  # GET /wish_list_items/1.json
  def show
    @user_id = @wish_list.user_id
  end

  # GET /wish_list_items/new
  def new
    @wish_list_item = WishListItem.new
  end

  # GET /wish_list_items/1/edit
  def edit
  end

  # POST /wish_list_items
  # POST /wish_list_items.json
  def create
    @wish_list = current_user.wish_list
    product = Product.find(params[:product_id])
    @wish_list_item = @wish_list.add_product(product.id, @wish_list)

    if @wish_list_item.present?
      respond_to do |format|
        if @wish_list_item.save
          format.html { redirect_to(@wish_list,
          :notice => 'Wish list item was successfully created.') }
          format.json { render :show, status: :created, location: @wish_list_item }
        else
          format.html { render :new }
          format.json { render json: @wish_list_item.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to wish_list_path(@wish_list)
    end
  end

  # PATCH/PUT /wish_list_items/1
  # PATCH/PUT /wish_list_items/1.json
  def update
    respond_to do |format|
      if @wish_list_item.update(wish_list_item_params)
        format.html { redirect_to @wish_list_item, notice: 'Wish list item was successfully updated.' }
        format.json { render :show, status: :ok, location: @wish_list_item }
      else
        format.html { render :edit }
        format.json { render json: @wish_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wish_list_items/1
  # DELETE /wish_list_items/1.json
  def destroy
    @wish_list_item.destroy
    respond_to do |format|
      format.html { redirect_to wish_list_items_url, notice: 'Wish list item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish_list_item
      @wish_list_item = WishListItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wish_list_item_params
      params.require(:wish_list_item).permit(:wishlist_id, :product_id)
    end

end
