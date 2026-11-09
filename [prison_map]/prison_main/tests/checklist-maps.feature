# Converted from the communitybot legacy tests by kora-qa-panel/scripts/convert-legacy.mjs.
# The """ block under each Scenario is the original test text, verbatim. Review before applying.
Feature: prison_main — Maps

  @prison_main @checklist @checklist:prison_main:main-interior @cat:maps @manual
  Scenario: Prison main block loads
    """
    Checklist test: Travel to Bolingbroke Penitentiary (~1700,2580) and enter the main block: interior renders and is walkable.
    """
    When I manually: go to Bolingbroke Penitentiary (around 1700, 2580)
    And I manually: enter the main block
    Then I confirm: the main block interior renders correctly
    And I confirm: I can walk around inside the main block

  @prison_main @checklist @checklist:prison_main:main-collision @cat:maps @manual
  Scenario: Prison main block collision
    """
    Checklist test: Walk through the main block: walls, doors and floors have collision; no holes or falling through.
    """
    When I manually: walk through the main block
    Then I confirm: walls, doors and floors have collision
    And I confirm: there are no holes and I do not fall through the floor

  @prison_main @checklist @checklist:prison_main:door-audio @cat:maps @manual
  Scenario: Prison door sounds
    """
    Checklist test: Open/close prison cell and gate doors: custom door audio plays (desertos_prison_door audio).
    """
    When I manually: open and close prison cell doors and gate doors
    Then I confirm: custom door audio (desertos_prison_door) plays when doors open and close
