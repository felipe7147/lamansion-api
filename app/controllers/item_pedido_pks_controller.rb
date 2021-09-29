class ItemPedidoPksController < ApplicationController
  before_action :set_item_pedido_pk, only: [:show, :update, :destroy]

  # GET /item_pedido_pks
  def index
    @item_pedido_pks = ItemPedidoPk.all

    render json: @item_pedido_pks
  end

  # GET /item_pedido_pks/1
  def show
    render json: @item_pedido_pk
  end

  # POST /item_pedido_pks
  def create
    @item_pedido_pk = ItemPedidoPk.new(item_pedido_pk_params)

    if @item_pedido_pk.save
      render json: @item_pedido_pk, status: :created, location: @item_pedido_pk
    else
      render json: @item_pedido_pk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /item_pedido_pks/1
  def update
    if @item_pedido_pk.update(item_pedido_pk_params)
      render json: @item_pedido_pk
    else
      render json: @item_pedido_pk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /item_pedido_pks/1
  def destroy
    @item_pedido_pk.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_pedido_pk
      @item_pedido_pk = ItemPedidoPk.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_pedido_pk_params
      params.fetch(:item_pedido_pk, {})
    end
end
