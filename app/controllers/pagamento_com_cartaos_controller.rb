class PagamentoComCartaosController < ApplicationController
  before_action :set_pagamento_com_cartao, only: [:show, :update, :destroy]

  # GET /pagamento_com_cartaos
  def index
    @pagamento_com_cartaos = PagamentoComCartao.all

    render json: @pagamento_com_cartaos
  end

  # GET /pagamento_com_cartaos/1
  def show
    render json: @pagamento_com_cartao
  end

  # POST /pagamento_com_cartaos
  def create
    @pagamento_com_cartao = PagamentoComCartao.new(pagamento_com_cartao_params)

    if @pagamento_com_cartao.save
      render json: @pagamento_com_cartao, status: :created, location: @pagamento_com_cartao
    else
      render json: @pagamento_com_cartao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pagamento_com_cartaos/1
  def update
    if @pagamento_com_cartao.update(pagamento_com_cartao_params)
      render json: @pagamento_com_cartao
    else
      render json: @pagamento_com_cartao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pagamento_com_cartaos/1
  def destroy
    @pagamento_com_cartao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagamento_com_cartao
      @pagamento_com_cartao = PagamentoComCartao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pagamento_com_cartao_params
      params.require(:pagamento_com_cartao).permit(:numeroDeParcelas)
    end
end
