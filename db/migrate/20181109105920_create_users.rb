class CreateUsers < ActiveRecord::Migration[5.2]
  def change
  	create_table :users do |t|
  		t.text :name
  		t.timestamps
  	end #5. rake db:migrate
  end
end
