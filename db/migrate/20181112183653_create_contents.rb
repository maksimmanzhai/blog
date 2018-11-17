class CreateContents < ActiveRecord::Migration[5.2]
  def change
  	create_table :contents do |t|
  		t.text :username
			t.text :message
			t.text :datestamp

			t.timestamps
  	end

  end
end
