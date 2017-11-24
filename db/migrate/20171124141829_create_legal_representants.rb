class CreateLegalRepresentants < ActiveRecord::Migration
  def change
    create_table :legal_representants do |t|
      t.string :name
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
