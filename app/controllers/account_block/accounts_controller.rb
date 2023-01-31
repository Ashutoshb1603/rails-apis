module AccountBlock
    class  AccountsController < ApplicationController
        def index
            @accounts = AccountBlock::Account.all
            render json: @accounts 
        end

        def show
            @accounts = AccountBlock::Account.find(params[:id])
        end
        
        def new
            @article = AccountBlock::Account.new(account_params)
        end
        
        def create
            @account = AccountBlock::Account.create(account_params)
            
            if AccountBlock::Account.save
                render json:{data:@account , msg: "Account created suuccessfully"}
            else
                render :new, status: :unprocessable_entity  
            end
        end
        
        def edit
            @account = AccountBlock::Account.find(params[:id])
        end
        
        def update
            @account = AccountBlock::Account.find(params[:id])
            if @account.update(account_params)
                redirect_to @account
            else
                render :edit , status: :unprocessable_entity
            end
        end
        
        def destroy
            @account = AccountBlock::Account.find(params[:id])
            @account.destroy

            redirect_to root_path , status: : see_other 
        end

        private
        def account_params
            params.require(:account).permit(:name,:email,:contact)
        end
    end
end
