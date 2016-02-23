class EntriesController < ApplicationController

  def new

  end

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private

  def entry_params
    params.require(:entry).permit(:id, :title, :body)
  end

end
