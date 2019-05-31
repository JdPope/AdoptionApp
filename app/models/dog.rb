class Dog < ApplicationRecord
  belongs_to :owner, optional: true
  belongs_to :trainer, optional: true
  has_many :dog_breeds
  has_many :breeds, through: :dog_breeds


    def self.dog_average_age
      Dog.average(:age)
    end

    def self.dog_total
      Dog.count
    end

    # def self.dog_count_per_breed
    #   Dog.count(:breed_id)
    # end

  #   def self.most_common_breed
  #     breed_counter = 0
  #     @dogs.each do |dog|
  #       if
  #
  #     breed_counter += 1
  #   end
  # end

end
