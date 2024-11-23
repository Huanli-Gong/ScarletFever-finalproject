class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :po1
      t.integer :po2
      t.integer :po3
      t.integer :po4
      t.integer :po5
      t.integer :po6
      t.integer :po7
      t.integer :pc1
      t.integer :pc2
      t.integer :pc3
      t.integer :pc4
      t.integer :pv1
      t.integer :pv2
      t.integer :pv3
      t.integer :pv4
      t.integer :pv5
      t.integer :pd1
      t.integer :pd2
      t.integer :pd3
      t.integer :overall_rating
      t.text :comments

      t.timestamps
    end
  end
end
