class CreateMoviesTable < ActiveRecord::Migration[7.1]
  def change
    create_table :movies_tables do |t|
      t.string 'title '
      t.string 'rating '
      t.string 'length'
      t.text ' description '
      t.datetime ' release_date '

      t.timestamps
    end
  end
end
