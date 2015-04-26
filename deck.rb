require 'squib'

Squib::Deck.new(width: 750, height: 1023, cards: 50, layout: 'issue_layout.yml') do
  background color: '#D0E6FF'
  issues = csv file: 'issue_cards.csv'
  svg file: issues["icon"], layout: :TypeIcon
  svg file: issues["usererror_icon"], layout: :DifficultyIcon
  text range: :all, str: issues['Title'], layout: :Title
  text range: :all, str: issues['Type'], layout: :Type
  text range: :all, str: issues['DifficultyText'], layout: :DifficultyText
  text range: :all, str: issues['EffectText'], layout: :EffectText
  text range: :all, str: issues['FlavorText'], layout: :FlavorText

  save_pdf file: 'issue_cards.pdf', gap: 5
end

Squib::Deck.new(width: 750, height: 1023, cards: 32, layout: 'business_layout.yml') do
  background color: '#EEE'
  businesss = csv file: 'business_cards.csv'
  svg file: businesss["icon"], width: 128, height: 128
  text range: :all, str: businesss['Title'], layout: :Title
  text range: :all, str: businesss['Type'], layout: :Type
  text range: :all, str: businesss['StatLabel'], layout: :StatLabel
  text range: :all, str: businesss['Stat'], layout: :Stat
  text range: :all, str: businesss['Special'], layout: :Special
  text range: :all, str: businesss['Flavor'], layout: :Flavor

  save_pdf file: 'business_cards.pdf', gap: 5
end

Squib::Deck.new(width: 750, height: 1023, cards: 41, layout: 'asset_layout.yml') do
  background color: '#BEFEEB'
  assets = csv file: 'asset_cards.csv'
  svg file: assets["icon"], width: 128, height: 128
  text range: :all, str: assets['Title'], layout: :Title
  text range: :all, str: assets['Type'], layout: :Type
  text range: :all, str: assets['StatLabel'], layout: :StatLabel
  text range: :all, str: assets['Stat'], layout: :Stat
  text range: :all, str: assets['Special'], layout: :Special
  text range: :all, str: assets['Flavor'], layout: :Flavor

  save_pdf file: 'asset_cards.pdf', gap: 5
end
