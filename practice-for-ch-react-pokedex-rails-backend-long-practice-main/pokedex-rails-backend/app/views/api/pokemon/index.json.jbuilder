
# Successful response looks like this with more entries:

# ```json
# [
#   {
#     "id": 1,
#     "number": 1,
#     "name": "Bulbasaur",
#     "imageUrl": "/images/pokemon_snaps/1.svg",
#     "captured": true
#   },
#   // ...
# ]
# ```


json.array! @pokemon, :id, :number, :name, :image_url, :captured






