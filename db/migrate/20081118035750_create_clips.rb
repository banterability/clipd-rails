class CreateClips < ActiveRecord::Migration
  def self.up
    create_table :clips do |t|
      t.string :selection
      t.string :sourceUri
      t.string :sourceTitle

      t.timestamps
    end
  end

  def self.down
    drop_table :clips
  end
end
