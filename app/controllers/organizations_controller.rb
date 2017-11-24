class OrganizationsController < ApplicationController

  def new
    @organization = Organization.new
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def index
    @organizations = Organization.all
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to organizations_path, notice: "Created successfully!"
    else
      flash.now[:alert] = "Create error"
      render :new
    end
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      redirect_to organizations_path, notice: "Updated successfully!"
    else
      flash.now[:alert] = "Update error"
      render :edit
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to organizations_path, notice: "Removed successfully!"
  end

  private

    def organization_params
      params.require(:organization)
            .permit(:name,
                    legal_representant_attributes: [:name, :_destroy])
    end

end
