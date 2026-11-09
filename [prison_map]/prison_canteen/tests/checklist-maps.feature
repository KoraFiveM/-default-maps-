# Converted from the communitybot legacy tests by kora-qa-panel/scripts/convert-legacy.mjs.
# The """ block under each Scenario is the original test text, verbatim. Review before applying.
Feature: prison_canteen — Maps

  @prison_canteen @checklist @checklist:prison_canteen:canteen-interior @cat:maps @manual
  Scenario: Prison canteen loads
    """
    Checklist test: Travel to Bolingbroke Penitentiary (~1700,2580) and enter the canteen: interior renders and is walkable.
    """
    When I manually: go to Bolingbroke Penitentiary (around x 1700, y 2580) and enter the canteen
    Then I confirm: the canteen interior renders correctly
    And I confirm: the canteen interior is walkable

  @prison_canteen @checklist @checklist:prison_canteen:canteen-collision @cat:maps @manual
  Scenario: Prison canteen collision
    """
    Checklist test: Walk through the canteen: walls, doors and floors have collision; no holes or falling through.
    """
    When I manually: walk through the canteen, including walls, doors and floors
    Then I confirm: walls, doors and floors have collision
    And I confirm: there are no holes and I do not fall through the floor
