class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.date :date
      t.string :weddinglocation
      t.string :receptionlocation
      t.string :bridename
      t.string :groomname
      t.string :mailingaddress
      t.string :emailaddress
      t.string :phone
      t.boolean :engagement
      t.boolean :bridal
      t.text :about

      t.timestamps
    end
  end
end
