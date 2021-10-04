class PagamentoComBoletosController < ApplicationController
  before_action :set_pagamento_com_boleto, only: [:show, :update, :destroy]

  # GET /pagamento_com_boletos
  def index
    @pagamento_com_boletos = PagamentoComBoleto.all

    render json: @pagamento_com_boletos, only: [:id,:dataPagamento, :dataVencimento]
  end

  # GET /pagamento_com_boletos/1
  def show
    render json: @pagamento_com_boleto
  end

  # POST /pagamento_com_boletos
  def create
    @pagamento_com_boleto = PagamentoComBoleto.new(pagamento_com_boleto_params)

    if @pagamento_com_boleto.save
      render json: @pagamento_com_boleto, status: :created, location: @pagamento_com_boleto
    else
      render json: @pagamento_com_boleto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pagamento_com_boletos/1
  def update
    if @pagamento_com_boleto.update(pagamento_com_boleto_params)
      render json: @pagamento_com_boleto
    else
      render json: @pagamento_com_boleto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pagamento_com_boletos/1
  def destroy
    @pagamento_com_boleto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagamento_com_boleto
      @pagamento_com_boleto = PagamentoComBoleto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pagamento_com_boleto_params
      params.require(:pagamento_com_boleto).permit(:dataVencimento, :dataPagamento)
    end
end
