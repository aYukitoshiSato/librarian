class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(create_params)
    @list.user_id = session[:user_id]
    if @list.save
      flash[:notice] = "リストを作成しました"
      redirect_to ("/users/#{session[:user_id]}")
    end
  end

  def show
    @list = List.find_by(id: params[:id])
    @list_contents = @list.contents
  end

  def add_page
    @contents_list = ContentsList.new
  end

  def add
    @contents_list = ContentsList.new(add_params)
    @contents_list.content_id = params[:id]
    if @contents_list.save
      flash[:notice] = "リストに追加しました"
      redirect_to ("/lists/#{@contents_list.list_id}")
    end
    @contents_list.errors.full_messages.each do |message|
      puts message
    end
  end


  def destroy
    @list = List.find_by(id: params[:id])
    if @list.destroy
      flash[:notice] = "リストを削除しました"
      redirect_to ("/users/#{session[:user_id]}")
    end
  end

  def remove
    @contents_list = ContentsList.find_by(content_id: params[:content_id],list_id: params[:list_id])
    if @contents_list.destroy
      flash[:notice] = "リストから削除しました"
      redirect_to ("/lists/#{params[:list_id]}")
    end
  end

  private

   def create_params
     params.require(:list).permit(:name)
   end

   def add_params
     params.require(:contents_list).permit(:list_id)
   end


end
