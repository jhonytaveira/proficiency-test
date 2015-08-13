module Base
  class FormBuilder < SimpleForm::FormBuilder
    def input(attribute_name, options = {}, &block)
      options[:input_html] ||= { class: "col-sm-#{options[:dimension]}" } if options[:dimension]

      reflection = find_association_reflection(attribute_name)

      if reflection
        attribute_name = reflection.options[:foreign_key] || :"#{reflection.name}_id"
        klass_name = reflection.class_name

        model = klass_name.to_s.camelize.constantize
        if options[:input_html]
          collection = model.ordered unless options[:input_html][:not_collection]
        else
          collection = model.ordered
        end
        options.reverse_merge!(as: :select, collection: collection)
      elsif collection = find_enumeration_reflection(attribute_name)
        options.reverse_merge!(as: :select, collection: collection)
      end
      super
    end

    def find_enumeration_reflection(attribute_name)
      object.class.enumerations[attribute_name.to_sym] if object.class.respond_to?(:enumerations)
    end
  end
end
