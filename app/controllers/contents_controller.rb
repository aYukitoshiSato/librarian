class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def show
    @content = Content.find_by(id: params[:id])
  end

  def new
  end

  def create
    @content = Content.new(title: params[:title])
    @content.save
    @collection = Collection.new(
      title: params[:collection],
      No: params[:No],
      content_id: @content.id
    )
    @collection.save
    if position = Position.find_by(name: params[:position])
      position_id = position.id
    else
      position = Position.new(name: params[:position])
      position.save
      position_id = position.id
    end
    if creator = Creator.find_by(name: params[:name])
      creator_id = creator.id
    else
      creator = Creator.new(name: params[:name])
      creator.save
      creator_id = creator.id
    end
    ctbc = CreatorBelongsToCollection.new(
      position_id: position_id,
      creator_id: creator_id,
      collection_id: @collection.id
    )
    ctbc.save
    redirect_to("/contents/index")
  end

  def edit
  end

end
