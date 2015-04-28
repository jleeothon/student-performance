class TurnNumberColumnsToStrings < ActiveRecord::Migration

  def change

    remove_column :students, :age
    add_column :students, :age, :string
    remove_column :students, :Medu
    add_column :students, :Medu, :string
    remove_column :students, :Fedu
    add_column :students, :Fedu, :string
    remove_column :students, :traveltime
    add_column :students, :traveltime, :string
    remove_column :students, :studytime
    add_column :students, :studytime, :string
    remove_column :students, :failures
    add_column :students, :failures, :string
    remove_column :students, :famrel
    add_column :students, :famrel, :string
    remove_column :students, :freetime
    add_column :students, :freetime, :string
    remove_column :students, :goout
    add_column :students, :goout, :string
    remove_column :students, :Dalc
    add_column :students, :Dalc, :string
    remove_column :students, :Walc
    add_column :students, :Walc, :string
    remove_column :students, :health
    add_column :students, :health, :string
    remove_column :students, :absences
    add_column :students, :absences, :string
    remove_column :students, :G1
    add_column :students, :G1, :string
    remove_column :students, :G2
    add_column :students, :G2, :string
    remove_column :students, :G3
    add_column :students, :G3, :string

  end

end
