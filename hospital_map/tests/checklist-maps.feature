# Converted from the communitybot legacy tests by kora-qa-panel/scripts/convert-legacy.mjs.
# The """ block under each Scenario is the original test text, verbatim. Review before applying.
Feature: hospital_map — Maps

  @hospital_map @checklist @checklist:hospital_map:hospital-interior @cat:maps
  Scenario: Pillbox hospital interior loads
    """
    Checklist test: Go to Pillbox Hill hospital (~307,-590) and enter: the furnished interior shows (rc12b_hospitalinterior IPL), not the destroyed version.
    """
    When I go to "pillbox_entrance"
    And I manually: walk through the entrance into the hospital interior
    Then I confirm: the furnished interior shows (rc12b_hospitalinterior IPL), not the destroyed version

  @hospital_map @checklist @checklist:hospital_map:hospital-collision @cat:maps @manual
  Scenario: Hospital collision and navigation
    """
    Checklist test: Walk through lobby, corridors and rooms (and top floor via lift/stairs): no falling through floor or missing walls.
    """
    When I manually: go to the Pillbox Medical Center lobby
    And I manually: walk through the lobby, corridors and rooms
    And I manually: go to the top floor via the lift and the stairs
    Then I confirm: I do not fall through the floor anywhere
    And I confirm: no walls are missing anywhere
