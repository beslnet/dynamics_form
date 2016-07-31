class Product < ActiveRecord::Base
	belongs_to :product_type
  #serialize :properties, Hash
  
  validate :validate_properties
  
  def validate_properties
    puts name
    puts properties
    product_type.fields.each do |field|
      puts properties[field.name].blank?
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end
end
