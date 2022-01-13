require_relative 'task_helpers'

task testing: :environment do
  poke_list = TaskHeklpers.fetch_pokes
  abilities_list = TaskHeklpers.fetch_abilities
  PokeDatum.create!(poke_list)
  Ability.create!(abilities_list)
end
