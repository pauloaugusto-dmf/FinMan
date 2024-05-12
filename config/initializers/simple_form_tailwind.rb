# config/initializers/simple_form_tailwind.rb
SimpleForm.setup do |config|
  config.wrappers :vertical_form, tag: 'div', class: 'mb-4' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'block text-gray-700 text-sm font-bold mb-2'
    b.use :input, class: 'shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline', error_class: 'border-red-500'
    b.use :error, wrap_with: { tag: 'p', class: 'text-red-500 text-xs italic' }
    b.use :hint,  wrap_with: { tag: 'p', class: 'text-gray-600 text-xs italic' }
  end

  # O restante da configuração...
end
