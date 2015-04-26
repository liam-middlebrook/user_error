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
  business = csv file: 'business_cards.csv'
  svg file: business["icon"], layout: :TypeIcon
  svg file: business["budget_icon"], layout: :BudgetIcon
  text range: :all, str: business['Title'], layout: :Title
  text range: :all, str: business['EffectText'], layout: :EffectText
  text range: :all, str: business['BudgetText'], layout: :BudgetText

  save_pdf file: 'business_cards.pdf', gap: 5
end

Squib::Deck.new(width: 750, height: 1023, cards: 41, layout: 'asset_layout.yml') do
  background color: '#BEFEEB'
  assets = csv file: 'asset_cards.csv'
  svg file: assets["icon"], layout: :TypeIcon
  text range: :all, str: assets['Name'], layout: :Name
  text range: :all, str: assets['CostText'], layout: :CostText
  text range: :all, str: assets['SkillText'], layout: :SkillText
  svg file: assets['CostIcon'], layout: :CostIcon
  svg file: assets['SkillIcon'], layout: :SkillIcon
  svg file: assets['AuditRiskIcon'], layout: :AuditRiskIcon
  text range: :all, str: assets['EffectText'], layout: :EffectText
  text range: :all, str: assets['FlavorText'], layout: :FlavorText

  save_pdf file: 'asset_cards.pdf', gap: 5
end
