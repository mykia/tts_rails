json.array!(@books) do |book|
  json.extract! book, :id, :booktitle, :author, :year, :published
  json.url book_url(book, format: :json)
end
