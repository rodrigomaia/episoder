class CreateTemporadas < ActiveRecord::Migration
  def change
    create_table :temporadas do |t|
      t.integer :numero
      t.string :titulo
      t.text :sinopse
      t.integer :seriado_id

      t.timestamps
    end
  end
end
