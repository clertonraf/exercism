# frozen_string_literal: true

class Team
  attr_accessor :matches_played, :won, :draw, :name

  def initialize(name:, matches_played: 0, won: 0, draw: 0)
    @name = name
    @matches_played = matches_played
    @won = won
    @draw = draw
  end

  def points
    (@won * 3) + @draw
  end

  def lost
    @matches_played - (@won + draw)
  end

  def print_name
    @name.ljust(30)
  end

  def print(data)
    case data
    when :matches_played then format_num(@matches_played)
    when :won then format_num(@won)
    when :draw then format_num(@draw)
    when :lost then format_num(lost)
    when :points then format_num(points)
    else
      print_name
    end
  end

  def ==(other)
    @name == other.name
  end

  def <=>(other)
    if points > other.points then -1
    elsif points < other.points then 1
    else
      (@name <=> other.name)
    end
  end

  private

    def format_num(num)
      num.to_s.rjust(3)
    end

    def format_name(name)
      name.ljust(31)
    end
end

# Tournament class
class Tournament
  class << self
    def tally(input)
      "#{header}#{table_from(input)}"
    end

    def table_from(input)
      lines = read_lines(input)
      return '' if lines[0].empty?

      match_results = lines.map { |line| line.split ';' }
      teams = process_results match_results
      table = teams.sort.map { |team| "#{team.print :name} |#{print_all_num_cells team}" }
      <<~TABLE
        #{table.join("\n")}
      TABLE
    end

    def upsert_team(teams:, team_search:)
      team_index = teams.index { |team| team.name == team_search }
      team = nil
      if team_index.nil?
        team = Team.new(name: team_search, matches_played: 1)
        teams << team
      else
        teams[team_index].matches_played += 1
        team = teams[team_index]
      end
      team
    end

    def process_results(results)
      teams = []
      results.each do |match|
        home = match[0]
        away = match[1]
        result = match[2]
        team_home = upsert_team teams: teams, team_search: home
        team_away = upsert_team teams: teams, team_search: away
        match_resolver home: team_home, away: team_away, result: result
      end
      teams
    end

    def match_resolver(home:, away:, result:)
      case result
      when 'win' then home.won += 1
      when 'loss' then away.won += 1
      else
        home.draw += 1
        away.draw += 1
      end
    end

    def read_lines(input)
      input.lines(chomp: true)
    end

    def print_single_num_cell(team, type)
      "#{team.print type} "
    end

    def print_all_num_cells(team)
      %i[matches_played won draw lost points].map { |type| print_single_num_cell team, type }.join('|').chop
    end

    def header
      <<~TALLY
        Team                           | MP |  W |  D |  L |  P
      TALLY
    end
  end
end
