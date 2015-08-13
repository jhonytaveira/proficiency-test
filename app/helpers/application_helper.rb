module ApplicationHelper
  def simple_form_for(object, *args, &block)
    options = args.extract_options!
    options[:builder] ||= Base::FormBuilder
    super(object, *(args << options), &block)
  end
end
