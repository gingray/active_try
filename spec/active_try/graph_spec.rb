describe Graph do
  describe '==' do
    context 'eql true' do
      let(:item_1) { Node.new 'first' }
      let(:item_2) { Node.new 'first' }
      it { expect(item_1).to be == item_2 }
    end

    context 'eql false' do
      let(:item_1) { Node.new 'first' }
      let(:item_2) { Node.new 'second' }
      it { expect(item_1).not_to be == item_2 }
    end
  end

  describe 'find path' do
    let(:graph) { Graph.new }
    let(:start) { Node.new 'start'}
    let(:end) { Node.new 'end'}

    before do
      graph.add
    end



  end
end
