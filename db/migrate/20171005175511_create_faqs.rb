class CreateFaqs < ActiveRecord::Migration[5.1]
  def change
    create_table :faqs do |t|
      t.references :group, null: false
      t.string :question, null: false
      t.text :answer, null: false
      t.timestamps
    end
    add_foreign_key :faqs, :groups
  end
end
