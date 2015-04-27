class Student < ActiveRecord::Base

  # The columns of the dataset, a list of hashes with name, desc, and values.
  def self.ds_columns
    @@DSColumns
  end

  # Only the names (not descriptions) of the dataset columns
  def self.ds_column_names
    @@DSColumns.map do |c|
      c[:name]
    end
  end

  @@EducationLevels = [['0', 'None'], ['1', 'Up to 4th grad'],
    ['2', '5th to 9th grade'], ['3', 'Secondary education'],
    ['4', 'Higher education']]

  @@DSColumns = [
    {
      name: 'sex',
      desc: 'Sex',
      values: [%w(F Female), %w(M Male)]
    },
    {
      name: 'age',
      desc: 'Age',
      values: (15..22).map { |i| [i.to_s, i.to_s] }
    },
    {
      name: 'address',
      desc: 'Address',
      values: [%w(U Urban), %w(R Rural)]
    },
    {
      name: 'famsize',
      desc: 'Family size',
      values: [['LE3', '<= 3'], ['GT3', '> 3']]
    },
    {
      name: 'Pstatus',
      desc: 'Parent\'s cohabitation status',
      values: [%w(T Together), %w(A Apart)]
    },
    {
      name: 'Medu',
      desc: 'Mother\'s education level',
      values: @@EducationLevels
    },
    {
      name: 'Fedu',
      desc: 'Father\'s education level',
      values: @@EducationLevels
    }
  ]

end
