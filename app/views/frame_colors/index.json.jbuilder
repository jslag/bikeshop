json.array!(@frame_colors) do |frame_color|
  json.extract! frame_color, :name
  json.url frame_color_url(frame_color, format: :json)
end
