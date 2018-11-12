class GroupsController < ApplicationController
    def index
        groups = Group.all 
        #byebug
        render json: groups 
    end

    def show
        group = Group.find(params[:id])
        render json: group
    end


    def create
        group = Group.new(group_params)
        
        if group.valid?
            group.save
            render json: group
        else
        render json: group.errors
        end
    end
    
    private

        def group_params
        params.require(:group).permit(:name, :address, :leader, :number, :email, :website)
        end
 end
