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

  # Receives a name (value) and outputs its description
  def self.description_for name, value
    @@DSColumns.find do |c|
      c[:name] == name
    end[:values].find do |v|
      v[0] == value
    end[1]
  end

  @@EducationLevels = [['0', 'None'], ['1', 'Up to 4th grad'],
    ['2', '5th to 9th grade'], ['3', 'Secondary education'],
    ['4', 'Higher education']]

  @@Jobs = [['teacher', 'Teacher'], ['Health', 'Health care-related'],
    ['services', 'Civil services'], ['at_home', 'At home'], ['other', 'Other']]

  @@YesNo = [%w(yes Yes), %w(no No)]

  @@Qualities = %w(Terrible Bad Okay Good Excellent).each.with_index.map do |q, i|
    [(i + 1).to_s, q]
  end

  @@Amounts = %w(Lowest Low Medium High Hightest).each.with_index.map do |a, i|
    [(i + 1).to_s, a]
  end

  @@Grades = (0..20).map{|i| [i.to_s, i.to_s]}

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
    },
    {
      name: 'Mjob',
      desc: 'Mother\'s ocupation',
      values: @@Jobs
    },
    {
      name: 'Fjob',
      desc: 'Father\'s ocupation',
      values: @@Jobs
    },
    {
      name: 'reason',
      desc: 'Reason for choosing this school',
      values: [['home', 'Close to home'],
        ['reputation', 'School\'s reputation'], ['course', 'Course preference'],
        ['other', 'Other']]
    },
    {
      name: 'guardian',
      desc: 'Guardian',
      values: [%w(mother Mother), %w(father Father), %w(other Other)]
    },
    {
      name: 'traveltime',
      desc: 'Travel time',
      values: [['1', '< 15 min'], ['2', '15-30 min'], ['3', '30 min - 1 hour'],
        ['4', '> 1 hour']]
    },
    {
      name: 'studytime',
      desc: 'Weekly study time',
      values: [['1', '< 2 hour'], ['2', '2-5 hour'], ['3', '5-10 hour'],
        ['4', '> 10 hour']]
    },
    {
      name: 'failures',
      desc: 'Number of past class failures',
      values: (1..3).map{|i| [i.to_s, i.to_s]} + [['4', '> 3']]
    },
    {
      name: 'schoolsup',
      desc: 'Extra educational support',
      values: @@YesNo
    },
    {
      name: 'famsup',
      desc: 'Family education support',
      values: @@YesNo
    },
    {
      name: 'paid',
      desc: 'Extra paid classes within the course subject',
      values: @@YesNo
    },
    {
      name: 'activities',
      desc: 'Extra curricular activities',
      values: @@YesNo
    },
    {
      name: 'nursery',
      desc: 'Attended nursery school',
      values: @@YesNo
    },
    {
      name: 'higher',
      desc: 'Intention to take higher education',
      values: @@YesNo
    },
    {
      name: 'internet',
      desc: 'Internet access from home',
      values: @@YesNo
    },
    {
      name: 'romantic',
      desc: 'With a romantic relationship',
      values: @@YesNo
    },
    {
      name: 'famrel',
      desc: 'Quality of family relationships',
      values: @@Qualities
    },
    {
      name: 'freetime',
      desc: 'Free time after school',
      values: @@Amounts
    },
    {
      name: 'goout',
      desc: 'Going out with friends',
      values: @@Amounts
    },
    {
      name: 'Dalc',
      desc: 'Workday alcohol consumption',
      values: @@Amounts
    },
    {
      name: 'Walc',
      desc: 'Weekend alcohol consumption',
      values: @@Amounts
    },
    {
      name: 'health',
      desc: 'Current health status',
      values: @@Qualities
    },
    {
      name: 'absences',
      desc: 'Number of school absences',
      values: (0..93).map{|i| [i.to_s, i.to_s]}
    },
    {
      name: 'G1',
      desc: 'First midterm grade',
      values: @@Grades
    },
    {
      name: 'G2',
      desc: 'Second midterm grade',
      values: @@Grades
    },
    {
      name: 'G3',
      desc: 'Third midterm grade',
      values: @@Grades
    }
  ]

end
