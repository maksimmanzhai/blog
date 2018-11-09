class CreateMessages < ActiveRecord::Migration[5.2]
  def change
  	create_table :messages do |t|
  		t.text :text
  		t.text :datestamp
  		t.timestamps
  	end #5. rake db:migrate
  end
end
