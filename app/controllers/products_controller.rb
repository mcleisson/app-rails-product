class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  
  def index
    @products = Product.all
    @categories = Category.all
  end

  
  def show
   
  end

  
  def new
    @product = Product.new
    @categories = Category.all
    @tags = Tag.all
  end

  
  def edit
    @categories = Category.all
  end

  
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to root_url, notice: "Produto criado com sucesso." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to root_url(@product), notice: "Produto atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: "Produto excluído." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:title, :description, :value, :value_promotion, :status, :category_id, :tag_id)
    end
end
