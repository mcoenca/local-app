class CreateBubbles < ActiveRecord::Migration
  def up
    create_table :bubbles do |t|
      t.column "name", :string, :limit => 15, :null => false
      t.text "feeling", :default => " 8 - )", :null=> false, :limit => 120

      #t.datetime "created_at"
      #t.datetime "updated_at"
      t.timestamps
    end
  end

  def down
    drop_table :bubbles
  end
end
