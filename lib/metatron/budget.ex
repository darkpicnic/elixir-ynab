defmodule Metatron.Budget do
    defstruct id: "", 
        name: "",
        month: "",
        to_be_budgeted: 0,
        age_of_money: 0,
        categories: []

    
    @doc """
    Convert YNAB API JSON response into %Budget{}
    """
    def from_json(json) do
        
    end
end