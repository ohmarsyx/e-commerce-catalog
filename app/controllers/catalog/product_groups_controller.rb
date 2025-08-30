module Catalog
  class ProductGroupsController < ApplicationController
    before_action :set_product_group, only: %i[ show edit update destroy ]

    # GET /product_groups
    def index
      @product_groups = ProductGroup.all
    end

    # GET /product_groups/1
    def show
    end

    # GET /product_groups/new
    def new
      @product_group = ProductGroup.new
    end

    # GET /product_groups/1/edit
    def edit
    end

    # POST /product_groups
    def create
      @product_group = ProductGroup.new(product_group_params)

      if @product_group.save
        redirect_to @product_group, notice: "Product group was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /product_groups/1
    def update
      if @product_group.update(product_group_params)
        redirect_to @product_group, notice: "Product group was successfully updated.", status: :see_other
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /product_groups/1
    def destroy
      @product_group.destroy!
      redirect_to product_groups_path, notice: "Product group was successfully destroyed.", status: :see_other
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_product_group
        @product_group = ProductGroup.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def product_group_params
        params.expect(product_group: [ :product_group_name ])
      end
  end
end
