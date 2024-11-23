class AddForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_reference :presentations, :team
    add_reference :feedbacks, :presentation
    add_reference :feedbacks, :user
    add_reference :users, :team
    add_reference :teams, :user
  end
end
