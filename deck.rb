require 'squib'

Squib::Deck.new(width: 750, height: 1023, cards: 123, layout: 'layout.yml') do
  background color: '#EEE'
  issues = csv file: 'issue_cards.csv'
  text range: :all, str: issues['Title'], layout: :Title
  text range: :all, str: issues['Type'], layout: :Type
  text range: :all, str: issues['StatLabel'], layout: :StatLabel
  text range: :all, str: issues['Stat'], layout: :Stat
  text range: :all, str: issues['Special'], layout: :Special
  text range: :all, str: issues['Flavor'], layout: :Flavor

  save_pdf file: 'test.pdf', gap: 5
end
