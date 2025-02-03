class BalanceController < ApplicationController
  add_breadcrumb "home", :root_path
  add_breadcrumb "movimentacoes", :balance_path
  before_action :authenticate_user!, only: %i[create edit update destroy]

  def index
    @balance = Balance.all
    incomes = Balance.where(type_balance: "E").sum(:amount)
    expenses = Balance.where(type_balance: "S").sum(:amount)
    @leftover = incomes - expenses

    add_breadcrumb "Inicio", root_path, title: "Voltar ao início"
  end

  def show
    @balance = Balance.find(params[:id])
  end

  def new
    @balance = Balance.new
  end

  def edit
    @balance = Balance.find(params[:id])
  end

  def create
    @balance = Balance.new(balance_params)
    if @balance.save
      redirect_to balance_path
    else
      render :new
    end
  end

  def update; end

  def destroy; end

  private

  def set_balance
    @balance = Balance.find(params[:id])
  end

  def balance_params
    params.permit(:description, :amount, :type_balance, :date_overdue)
  end
end
