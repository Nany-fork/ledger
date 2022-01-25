class BalancesController < ApplicationController
    def new
        @balance = Balance.new
    end

    def create
        @balance = Balance.new(balance_params)
        @balance.user_id = 1
        # @balance.date = Time.now.strftime("%Y","%m","%d") 
        if @balance.save
            redirect_to new_balance_path
        else
            render :new , status: :unprocessable_entity
        end
    end
    
    def show
        balance = Balance.all
    end

    private
    def balance_params
      params.require(:balance).permit(:description, :entry_type, :quantity, :category_id,:currency_cents, :date)
    end
end
