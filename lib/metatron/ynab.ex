defmodule Metatron.YNAB do
    

    def get(path, token) do
        headers = ["Authorization": "Bearer #{token}", "Accept": "Application/json; Charset=utf-8"]
        HTTPoison.get!("https://api.youneedabudget.com/v1/#{path}", headers)
    end

end