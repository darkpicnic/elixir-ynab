defmodule Metatron.BudgetServer do
    use GenServer

    @name :budget_server

    alias Metatron.Budget
    alias Metatron.YNAB

    # Public endpoints
    def get_current_month(budget_id, token) do
        GenServer.call @name, {:get_current_month, budget_id, token}
    end

    # Server callbacks
    def handle_call({:get_current_month, budget_id, token}, _from, state) do
        IO.puts "Getting current month for budget: #{budget_id}"
        resp = YNAB.get("/budgets/#{budget_id}/months/current", token)
        IO.inspect resp
        {:reply, state, state}
    end

    def start_link(_args) do
        IO.puts "Starting the budget server..."
        GenServer.start_link(__MODULE__, %Budget{}, name: @name)
    end

    def init(budget) do
        {:ok, budget}
    end
    

end