class AddColors < ActiveRecord::Migration
  def change
    create_table :frame_colors do |t|
      t.string :name

      t.timestamps
    end

    add_reference(:orders, :frame_color)
  end
end
