json.array! @beers.each do |beer|
  json.id beer.id
  json.name beer.name
  json.style beer.style
  json.alcohol beer.alcohol
  json.ibu beer.ibu
end
#json.array! is really telling it to build an array of beer hashes so each hash is a beer object.