class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :sex
      t.integer :age
      t.string :address
      t.string :famsize
      t.string :Pstatus
      t.integer :Medu
      t.integer :Fedu
      t.string :Mjob
      t.string :Fjob
      t.string :reason
      t.string :guardian
      t.integer :traveltime
      t.integer :studytime
      t.integer :failures
      t.string :schoolsup
      t.string :famsup
      t.string :paid
      t.string :activities
      t.string :nursery
      t.string :higher
      t.string :internet
      t.string :romantic
      t.integer :famrel
      t.integer :freetime
      t.integer :goout
      t.integer :Dalc
      t.integer :Walc
      t.integer :health
      t.integer :absences
      t.integer :G1
      t.integer :G2
      t.integer :G3

      t.timestamps null: false
    end
  end
end
