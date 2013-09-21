class CreateWatchedLeases < ActiveRecord::Migration
  def change
    create_table :watched_leases do |t|
        t.belongs_to :user
        t.belongs_to :listing
        t.integer    :open
      t.timestamps
    end
  end
end
