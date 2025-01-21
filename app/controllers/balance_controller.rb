class BalanceController < ApplicationController
  before_action :authenticate_user!, only: %i[create edit update destroy]

  def index
    @balance = Balance.all
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
