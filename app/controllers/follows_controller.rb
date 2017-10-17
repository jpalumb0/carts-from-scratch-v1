class FollowsController < ApplicationController
  def index
    @follows = Follow.all

    render("follows/index.html.erb")
  end

  def show
    @follow = Follow.find(params[:id])

    render("follows/show.html.erb")
  end

  def new
    @follow = Follow.new

    render("follows/new.html.erb")
  end

  def create
    @follow = Follow.new

    @follow.follower_id = params[:follower_id]
    @follow.following_id = params[:following_id]

    save_status = @follow.save

    if save_status == true
      redirect_to("/follows/#{@follow.id}", :notice => "Follow created successfully.")
    else
      render("follows/new.html.erb")
    end
  end

  def edit
    @follow = Follow.find(params[:id])

    render("follows/edit.html.erb")
  end

  def update
    @follow = Follow.find(params[:id])

    @follow.follower_id = params[:follower_id]
    @follow.following_id = params[:following_id]

    save_status = @follow.save

    if save_status == true
      redirect_to("/follows/#{@follow.id}", :notice => "Follow updated successfully.")
    else
      render("follows/edit.html.erb")
    end
  end

  def destroy
    @follow = Follow.find(params[:id])

    @follow.destroy

    if URI(request.referer).path == "/follows/#{@follow.id}"
      redirect_to("/", :notice => "Follow deleted.")
    else
      redirect_to(:back, :notice => "Follow deleted.")
    end
  end
end
