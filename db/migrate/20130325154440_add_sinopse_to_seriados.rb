class AddSinopseToSeriados < ActiveRecord::Migration
  def change
    add_column :seriados, :sinopse, :text
  end
end
