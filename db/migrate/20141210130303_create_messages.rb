class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :visibility
      t.string :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
