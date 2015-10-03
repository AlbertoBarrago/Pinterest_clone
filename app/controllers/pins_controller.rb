class PinsController < ApplicationController
  before_action :find_pin, only: [:show, :edit, :update, :upvote]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @pins = Pin.all.order("created_at DESC")
  end

  def show
    commontator_thread_show(@pin)
  end

  def new
    @pin = current_user.pins.build
  end

  def create
    if @pin.save
      redirect_to @pin, notice: "Pin creato con successo!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin,notice: "Pin aggiornato con successo"
    else
      render 'edit'
    end
  end

  def destroy
    @pin.destroy
    redirect_to root_path
  end

  def upvote
    @pin.upvote_by current_user
    redirect_to :back
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end

  def find_pin
    @pin = Pin.find(params[:id])
  end

  def correct_user
    @pin = Pin.find params[:id]
    redirect_to root_path unless current_user == @pin.user
  end
end
