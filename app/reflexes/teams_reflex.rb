# frozen_string_literal: true

class TeamsReflex < ApplicationReflex
  delegate :current_user, to: :connection

  def get_team
    @selected_team = current_user.teams.find(element.dataset[:id])
  end

  def set_team
    @selected_team = current_user.teams.first
  end
end
