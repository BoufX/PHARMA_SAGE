class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to history_path(@order)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy_all
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to history_path(@order)
  end

  def history
    @orders = Order.all
  end

  private

  def order_params
    params.require(:order).permit(:name)
  end
end
