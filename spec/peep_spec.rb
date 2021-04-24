require 'peep'

describe Peep do
  describe '.all' do
    it 'shows all the peeps from database' do
      DatabaseConnection.query("INSERT INTO peeps(text) VALUES('my first peep')")
      peep = Peep.all[0].text
      expect(peep).to eq('my first peep')
    end
  end

  describe '.create' do
    it 'stores a peep in database' do
      Peep.create(text: 'my first peep')
      text = Peep.all[0].text
      expect(text).to eq('my first peep')
    end
  end

end