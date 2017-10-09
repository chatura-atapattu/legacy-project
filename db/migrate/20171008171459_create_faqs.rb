class CreateFaqs < ActiveRecord::Migration[5.1]
  def change
    create_table :faqs do |t|
      t.references :group, foreign_key: true
      t.string :question
      t.text :answer

      t.timestamps
    end
  end
end
