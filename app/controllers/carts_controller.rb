class CartsController < ApplicationController
  def index
    @carts = Cart.all

    render("carts/index.html.erb")
  end

  def show
    @cart = Cart.find(params[:id])

    render("carts/show.html.erb")
  end

  def new
    @cart = Cart.new

    render("carts/new.html.erb")
  end

  def create
    @cart = Cart.new

    @cart.user_id = params[:user_id]
    @cart.cart_name = params[:cart_name]

    save_status = @cart.save

    if save_status == true
      redirect_to("/users/#{@cart.user_id}", :notice => "Cart created successfully.")
    else
      render("carts/new.html.erb")
    end
  end

  def edit
    @cart = Cart.find(params[:id])

    render("carts/edit.html.erb")
  end

  def update
    @cart = Cart.find(params[:id])

    @cart.user_id = params[:user_id]
    @cart.cart_name = params[:cart_name]

    save_status = @cart.save

    if save_status == true
      redirect_to("/carts/#{@cart.id}", :notice => "Cart updated successfully.")
    else
      render("carts/edit.html.erb")
    end
  end

  def destroy
    @cart = Cart.find(params[:id])

    @cart.destroy

    if URI(request.referer).path == "/carts/#{@cart.id}"
      redirect_to("/", :notice => "Cart deleted.")
    else
      redirect_to(:back, :notice => "Cart deleted.")
    end
  end
end
