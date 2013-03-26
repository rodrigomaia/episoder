class CreateSeriados < ActiveRecord::Migration
  def change
    create_table :seriados do |t|
      t.string :nome
      t.date :inicio
      t.string :status, :size => 1

      t.timestamps
    end
  end
end
