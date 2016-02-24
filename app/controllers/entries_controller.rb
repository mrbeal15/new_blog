class EntriesController < ApplicationController

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(title: params[:entries][:title], body: params[:entries][:body], tags: params[:entries][:tags])
    if @entry.save
      redirect_to entries_path
    else
      redirect_to root_path
    end
  end

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private

  def entry_params
    params.require(:entry).permit(:id, :title, :body, :tags)
  end

end
