class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end
end

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

 def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end
