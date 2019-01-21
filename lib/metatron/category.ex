defmodule Metatron.Category do
    defstruct id: "",
        name: "",
        hidden: false,
        original_category_group_id: nil,
        note: "",
        budgeted: 0,
        activity: 0,
        balance: 0,
        deleted: false
end