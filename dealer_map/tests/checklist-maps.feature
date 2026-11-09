# Converted from the communitybot legacy tests by kora-qa-panel/scripts/convert-legacy.mjs.
# The """ block under each Scenario is the original test text, verbatim. Review before applying.
Feature: dealer_map — Maps

  @dealer_map @checklist @checklist:dealer_map:dealer-interior @cat:maps @manual
  Scenario: Dealership interior loads
    """
    Checklist test: Visit the dealership showroom: MLO interior renders with no holes; walk in and out without falling through the floor.
    """
    When I manually: go to the vehicle dealership showroom
    Then I confirm: the MLO interior renders with no holes
    When I manually: walk into the showroom and back out several times
    Then I confirm: I do not fall through the floor when walking in and out

  @dealer_map @checklist @checklist:dealer_map:dealer-collision @cat:maps @manual
  Scenario: Dealer collision and props
    """
    Checklist test: Walk around the showroom: walls, counters and floors have collision; no invisible walls blocking doors.
    """
    When I manually: go to the vehicle dealership showroom
    And I manually: walk around the showroom along the walls, counters and floors
    Then I confirm: walls, counters and floors have collision
    And I confirm: no invisible walls block the doors
