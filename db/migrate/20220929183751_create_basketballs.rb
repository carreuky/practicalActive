class CreateBasketballs < ActiveRecord::Migration[6.1]
  def change
    create_table :basketballs do |t|
      t.string :player
      t.string :team
      t.string :position
    end
  end
end
