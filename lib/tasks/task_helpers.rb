module TaskHeklpers
  def self.fetch_data(url)
    response = RestClient.get(url)
  end

  def self.fetch_pokes
    response = fetch_data('https://pokeapi.co/api/v2/pokemon?limit=151')
    results = JSON.parse(response)['results']
    poke = JSON.parse(fetch_data(results[0]['url']))
    p poke.dig('forms')
    p poke.dig('sprites', 'front_default')
  end
end
