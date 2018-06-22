class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def show
    @content = Content.find_by(id: params[:id])
  end

  def new
    @content = Content.new
    @collection = Collection.new
    @creator = Creator.new
    @cbtc = CreatorBelongsToCollection.new
  end

  def create
    @content = Content.new(content_params)
    @content.save

    @collection = Collection.new(collection_params)
    @collection.content_id = @content.id
    @collection.save

    if @creator = Creator.find_by(creator_params)
    else
      @creator = Creator.new(creator_params)
      @creator.save
    end
    @cbtc = CreatorBelongsToCollection.new(cbtc_params)
    @cbtc.collection_id = @collection.id
    @cbtc.creator_id = @creator.id
    @cbtc.save

    redirect_to ("/contents/index")

  end

  private

   def content_params
     params.require(:content).permit(:title, :form)
   end
   def collection_params
     params.require(:collection).permit(:title, :No)
   end
   def cbtc_params
     params.require(:creator_belongs_to_collection).permit(:position)
   end
   def creator_params
     params.require(:creator).permit(:name)
   end

  def edit
  end

end
