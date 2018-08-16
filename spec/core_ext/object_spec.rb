RSpec.describe Object do
  describe '#publish_private_methods' do
    it 'makes private methods public' do
      instance1 = Object.new
      expect(instance1.private_methods.size).not_to eq(0)
      instance1.publish_private_methods
      expect(instance1.private_methods.size).to eq(0)

      instance2 = Object.new
      expect(instance2.private_methods.size).not_to eq(0)
    end
  end
end
