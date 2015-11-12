class DonkeysController < ApplicationController
  before_action :set_donkey, only: [:show, :edit, :update, :destroy]

  # GET /donkeys
  # GET /donkeys.json
  def index
    @donkeys = Donkey.all
  end

  # GET /donkeys/1
  # GET /donkeys/1.json
  def show
  end

  # GET /donkeys/new
  def new
    @donkey = Donkey.new
    @breeds = Breed.order("breed_name")
    @owners = Owner.order("last_name")
  end

  # GET /donkeys/1/edit
  def edit
    @breeds = Breed.order("breed_name")
    @owners = Owner.order("last_name")
  end

  # POST /donkeys
  # POST /donkeys.json
  def create
    @donkey = Donkey.new(donkey_params)

    respond_to do |format|
      if @donkey.save
        format.html { redirect_to @donkey, notice: 'Donkey was successfully created.' }
        format.json { render :show, status: :created, location: @donkey }
      else
        format.html { render :new }
        format.json { render json: @donkey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donkeys/1
  # PATCH/PUT /donkeys/1.json
  def update
    respond_to do |format|
      if @donkey.update(donkey_params)
        format.html { redirect_to @donkey, notice: 'Donkey was successfully updated.' }
        format.json { render :show, status: :ok, location: @donkey }
      else
        format.html { render :edit }
        format.json { render json: @donkey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donkeys/1
  # DELETE /donkeys/1.json
  def destroy
    @donkey.destroy
    respond_to do |format|
      format.html { redirect_to donkeys_url, notice: 'Donkey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donkey
      @donkey = Donkey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donkey_params
      params.require(:donkey).permit(:name, :owner_id, :dob, :breed_id, :med_cond, :avatar)
    end
end
