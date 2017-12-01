class ItemsController < ApplicationController
  
  def index
    @items = Item.all

    render("items/index.html.erb")
  end

  def show
    @item = Item.find(params[:id])

    render("items/show.html.erb")
  end

  def new
    @item = Item.new
    


    render("items/new.html.erb")
  end

  def create
    @item = Item.new
    
    #require "addressable/uri"
    url = params[:item_url]
    url = Addressable::URI.encode(url)
    #url = uri.scheme + uri.host + uri.path

    page = HTTParty.get(url)
    doc = Nokogiri::HTML(page)
=begin
    if doc.at_css("meta[property*='price:amount']")['content'] != nil 
      price = doc.at_css("meta[property*='price:amount']")['content']
    else
      price = nil
    end  
  
    if doc.at_css("meta[property*='site_name']")['content'] != nil
      vendor = doc.at_css("meta[property*='site_name']")['content']
    else
      vendor = nil
    end
=end
    @item.item_name = #doc.css("title").text.strip
    
    @item.description = #blank 'Notes' #for the moment, this is going to be price
  
    @item.quantity_wanted = params[:quantity_wanted]
    
    @item.quantity_received = #vendor #quantity received is vendor name for now
    
    @item.item_url = url
    @item.vendor_id = #blank
    @item.image_url = #temporarily 'price' #coming soon" #blank for now #params[:image_url]
    @item.cart_id = params[:cart_id]
    @item.gotit = params[:gotit]

    save_status = @item.save

    if save_status == true
      redirect_to("/users/#{current_user.id}", :notice => "Item created successfully.")
    else
      render("items/new.html.erb")
    end
  end

  def edit
    @item = Item.find(params[:id])

    render("items/edit.html.erb")
  end

  def update
    @item = Item.find(params[:id])

    @item.item_name = params[:item_name]
    @item.description = params[:description]
    @item.quantity_wanted = params[:quantity_wanted]
    @item.quantity_received = params[:quantity_received]
    @item.item_url = params[:item_url]
    @item.vendor_id = params[:vendor_id]
    @item.image_url = params[:image_url]
    @item.cart_id = params[:cart_id]
    @item.gotit = params[:gotit]

    save_status = @item.save

    if save_status == true
      redirect_to(:back, :notice => "Item updated successfully.")
    else
      render("items/edit.html.erb")
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    if URI(request.referer).path == "/items/#{@item.id}"
      redirect_to("/", :notice => "Item deleted.")
    else
      redirect_to(:back, :notice => "Item deleted.")
    end
  end
end
