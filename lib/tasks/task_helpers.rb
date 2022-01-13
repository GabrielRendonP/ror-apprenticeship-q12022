module TaskHeklpers
  # animated_sprite = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/#{id}.gif"
  # sprite = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/#{id}.png"
  def self.fetch_data(url)
    base = 'https://pokeapi.co/api/v2/'
    response = RestClient.get("#{base}/#{url}")
    JSON.parse(response)
  end

  def self.fetch_pokes
    results = fetch_data('pokemon?limit=151')['results']
    results.map.with_index do |poke, idx|
      { name: poke['name'],
        picture: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/#{idx + 1}.png",
        animation: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/#{idx + 1}.gif" }
    end
  end

  def self.fetch_abilities
    results = fetch_data('ability?limit=10')['results']
    results.map do |ability|
      { name: ability['name'],
        description: (fetch_data("ability/#{ability['name']}")).dig('effect_entries', 1, 'effect') }
    end
  end
end
