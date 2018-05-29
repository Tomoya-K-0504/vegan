class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :role
      t.integer :sex
      t.integer :age
      t.string :job
      t.string :born_in
      t.string :living_address
      t.string :principle
      t.string :trigger
      t.string :twitter
      t.string :facebook
      t.string :contact
      t.string :career

      t.timestamps
    end
  end
end
