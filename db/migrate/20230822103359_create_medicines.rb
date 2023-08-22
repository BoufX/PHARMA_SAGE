class CreateMedicines < ActiveRecord::Migration[7.0]
  def change
    create_table :medicines do |t|

      t.timestamps
    end
  end
end
