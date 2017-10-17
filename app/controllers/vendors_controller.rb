class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all

    render("vendors/index.html.erb")
  end

  def show
    @vendor = Vendor.find(params[:id])

    render("vendors/show.html.erb")
  end

  def new
    @vendor = Vendor.new

    render("vendors/new.html.erb")
  end

  def create
    @vendor = Vendor.new

    @vendor.vendor_name = params[:vendor_name]

    save_status = @vendor.save

    if save_status == true
      redirect_to("/vendors/#{@vendor.id}", :notice => "Vendor created successfully.")
    else
      render("vendors/new.html.erb")
    end
  end

  def edit
    @vendor = Vendor.find(params[:id])

    render("vendors/edit.html.erb")
  end

  def update
    @vendor = Vendor.find(params[:id])

    @vendor.vendor_name = params[:vendor_name]

    save_status = @vendor.save

    if save_status == true
      redirect_to("/vendors/#{@vendor.id}", :notice => "Vendor updated successfully.")
    else
      render("vendors/edit.html.erb")
    end
  end

  def destroy
    @vendor = Vendor.find(params[:id])

    @vendor.destroy

    if URI(request.referer).path == "/vendors/#{@vendor.id}"
      redirect_to("/", :notice => "Vendor deleted.")
    else
      redirect_to(:back, :notice => "Vendor deleted.")
    end
  end
end
