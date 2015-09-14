describe ActiveTry do
  let!(:account) { create :account }
  let!(:campaign) { create :campaign, account: account }
  let!(:group) { create :group, campaign: campaign }
  let!(:ad) { create :ad, group: group }

  it do
    ActiveTry.show_arr
  end
end
