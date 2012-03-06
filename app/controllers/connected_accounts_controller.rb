class ConnectedAccountsController < ApplicationController
  # GET /connected_accounts
  # GET /connected_accounts.json
  def index
    @connected_accounts = ConnectedAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @connected_accounts }
    end
  end

  # GET /connected_accounts/1
  # GET /connected_accounts/1.json
  def show
    @connected_account = ConnectedAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @connected_account }
    end
  end

  # GET /connected_accounts/new
  # GET /connected_accounts/new.json
  def new
    @connected_account = ConnectedAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @connected_account }
    end
  end

  # GET /connected_accounts/1/edit
  def edit
    @connected_account = ConnectedAccount.find(params[:id])
  end

  # POST /connected_accounts
  # POST /connected_accounts.json
  def create
    @connected_account = ConnectedAccount.new(params[:connected_account])

    respond_to do |format|
      if @connected_account.save
        format.html { redirect_to @connected_account, notice: 'Connected account was successfully created.' }
        format.json { render json: @connected_account, status: :created, location: @connected_account }
      else
        format.html { render action: "new" }
        format.json { render json: @connected_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /connected_accounts/1
  # PUT /connected_accounts/1.json
  def update
    @connected_account = ConnectedAccount.find(params[:id])

    respond_to do |format|
      if @connected_account.update_attributes(params[:connected_account])
        format.html { redirect_to @connected_account, notice: 'Connected account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @connected_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connected_accounts/1
  # DELETE /connected_accounts/1.json
  def destroy
    @connected_account = ConnectedAccount.find(params[:id])
    @connected_account.destroy

    respond_to do |format|
      format.html { redirect_to connected_accounts_url }
      format.json { head :no_content }
    end
  end
end
