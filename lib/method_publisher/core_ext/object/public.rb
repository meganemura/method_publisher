class Object
  def publish_private_methods(include_inherited = true)
    private_methods(include_inherited).each do |method|
      singleton_class.instance_eval do
        public(method)
      end
    end
  end
end
