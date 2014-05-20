class AddPassWordDigestToBubbles < ActiveRecord::Migration
  def up
    add_column "bubbles", "password_digest", :string
  end

  def down
    remove_column "bubbles", "password_digest"
  end
end
