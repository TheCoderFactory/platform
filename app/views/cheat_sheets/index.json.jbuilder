json.array!(@cheat_sheets) do |cheat_sheet|
  json.extract! cheat_sheet, :name, :icon, :gist
  json.url cheat_sheet_url(cheat_sheet, format: :json)
end
