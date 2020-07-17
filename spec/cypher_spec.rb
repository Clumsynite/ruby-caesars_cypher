# frozen_string_literal: true

require './lib/cypher'

describe Caesars_Cypher do
  describe "#cypher" do
    it 'shifts the word forward by 5 characters' do
      cypher = Caesars_Cypher.new
      expect(cypher.cypher("What a string!", 5)).to eql('Bmfy f xywnsl!')
    end

    it 'wraps z' do
      cypher = Caesars_Cypher.new
      expect(cypher.cypher("zzz", 1)).to eql('aaa')
    end

    it 'wraps character even with negative shift' do
      cypher = Caesars_Cypher.new
      expect(cypher.cypher("xyz", -52)).to eql('xyz')
    end
  end
end