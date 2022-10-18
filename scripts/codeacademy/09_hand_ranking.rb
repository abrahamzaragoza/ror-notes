# frozen_string_literal: true

# same suit - royal flush, straight flush, flush
# diff suit - four of a kind, full house, straight, three of a kind, two pair, pair
# high card

# Poker class - finds the best hand
class Poker
  attr_accessor :cards, :numbers, :hand_ranks

  RANKS = {
    'royal_flush' => 10,
    'straight_flush' => 9,
    'four_of_a_kind' => 8,
    'full_house' => 7,
    'flush' => 6,
    'straight' => 5,
    'three_of_a_kind' => 4,
    'two_pair' => 3,
    'pair' => 2,
    'high_card' => 1
  }.freeze

  def initialize(*args)
    @hand_ranks = []
    @cards = []
    args.each { |arg| @cards << arg }
  end

  def hand_reader
    @numbers = []
    @suits = []
    @cards.each do |card|
      hand_parser(card)
    end
    @number_rep = @numbers.tally
    @suits_rep = @suits.tally
  end

  def hand_parser(card)
    if card.length > 2
      @numbers << card[0, 2].downcase
      @suits << card[2].downcase
    else
      @numbers << card[0].downcase
      @suits << card[1].downcase
    end
  end

  def hand_ranking
    hand_reader
    same_suit_hands
    diff_suit_hands

    if @hand_ranks.empty?
      high_card
    else
      higher_rank_in_hand
    end
  end

  def higher_rank_in_hand
    higher_rank = RANKS.key(@hand_ranks.max)
    p "You have #{higher_rank} in your hand"
  end

  def diff_suit_hands
    straight?

    return if @number_rep.values.max < 2

    pair?
    two_pair?
    three_of_a_kind?
    full_house?
    four_of_a_kind?
  end

  def same_suit_hands
    return unless flush?

    straight_flush?
    royal_flush?
  end

  def pair?
    @hand_ranks << RANKS['pair'] if @number_rep.values.include?(2)
  end

  def two_pair?
    @hand_ranks << RANKS['two_pair'] if @number_rep.values.count(2) == 2
  end

  def three_of_a_kind?
    @hand_ranks << RANKS['three_of_a_kind'] if @number_rep.values.include?(3)
  end

  def full_house?
    @hand_ranks << RANKS['full_house'] if pair? && three_of_a_kind?
  end

  def four_of_a_kind?
    @hand_ranks << RANKS['four_of_a_kind'] if @number_rep.values.include?(4)
  end

  def flush?
    @hand_ranks << RANKS['flush'] if @suits_rep.values.include?(5)
  end

  def straight?
    @hand_ranks << RANKS['straight'] if @numbers.each_cons(5).all? { |x, y| y.to_i == x.to_i + 1 }
  end

  def straight_flush?
    @hand_ranks << RANKS['straight_flush'] if straight? && flush?
  end

  def royal_flush?
    @hand_ranks << RANKS['royal_flush'] if @suits.sort == %w[10 a j k q] && flush?
  end

  def high_card
    card = if @numbers.any?('a')
             @cards.find { |c| c.match(/a[hcds]/) }
           else
             @cards.max
           end

    p "You high card is #{card}"
  end
end

# flush: 'qh', 'kh', 'ah', '10h', 'jh'
# high_card '10s', '4c', 'ac', 'jd', '7h'
# pair: '10s', '4c', 'ac', '4d', '7h'
# two pair: '10s', '4c', 'ac', 'ad', '10h'
hand = Poker.new('10s', '4c', 'ac', 'jd', '7h')
hand.hand_ranking
