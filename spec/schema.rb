ActiveRecord::Schema.define do
  self.verbose = false

  create_table :accounts, :force => true do |t|
    t.string :text
    t.timestamps null: false
  end

  create_table :campaigns, :force => true do |t|
    t.string :text
    t.references :account
    t.timestamps null: false
  end

  create_table :groups, :force => true do |t|
    t.string :text
    t.references :campaign
    t.timestamps null: false
  end

  create_table :ads, :force => true do |t|
    t.string :text
    t.references :group
    t.timestamps null: false
  end
end
