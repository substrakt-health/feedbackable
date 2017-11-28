class CreateServiceFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :service_feedbacks do |t|
      t.integer :score
      t.text :comments
      t.integer :service
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
