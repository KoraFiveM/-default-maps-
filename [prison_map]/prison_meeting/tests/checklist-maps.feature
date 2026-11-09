# Converted from the communitybot legacy tests by kora-qa-panel/scripts/convert-legacy.mjs.
# The """ block under each Scenario is the original test text, verbatim. Review before applying.
Feature: prison_meeting — Maps

  @prison_meeting @checklist @checklist:prison_meeting:meeting-interior @cat:maps @manual
  Scenario: Prison meeting room loads
    """
    Checklist test: Travel to Bolingbroke Penitentiary (~1700,2580) and enter the meeting room: interior renders and is walkable.
    """
    When I manually: go to Bolingbroke Penitentiary and enter the meeting room
    Then I confirm: the meeting room interior renders correctly
    And I confirm: I can walk around inside the meeting room

  @prison_meeting @checklist @checklist:prison_meeting:meeting-collision @cat:maps @manual
  Scenario: Prison meeting room collision
    """
    Checklist test: Walk through the meeting room: walls, doors and floors have collision; no holes or falling through.
    """
    When I manually: walk through the meeting room along the walls, doors and floors
    Then I confirm: walls, doors and floors have collision
    And I confirm: there are no holes and I do not fall through the floor
