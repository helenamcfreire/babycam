class CreateCadastrados < ActiveRecord::Migration
  def change
    create_table :cadastrados do |t|

      t.string :email,    :null => false, :default => ''

      t.timestamps

    end
  end
end