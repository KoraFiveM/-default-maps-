# Converted from the communitybot legacy tests by kora-qa-panel/scripts/convert-legacy.mjs.
# The """ block under each Scenario is the original test text, verbatim. Review before applying.
Feature: kora_phoneshop — Maps

  @kora_phoneshop @checklist @checklist:kora_phoneshop:phoneshop-interior @cat:maps @manual
  Scenario: Phone shop interior loads
    """
    Checklist test: Go to the Strawberry strip mall (sc1_11 corner unit) and enter: custom shop interior renders and is walkable.
    """
    When I manually: go to the Strawberry strip mall sc1_11 corner unit and enter the phone shop
    Then I confirm: the custom shop interior renders correctly
    And I confirm: I can walk around inside the interior

  @kora_phoneshop @checklist @checklist:kora_phoneshop:phoneshop-collision @cat:maps @manual
  Scenario: Phone shop collision and occlusion
    """
    Checklist test: Walk around inside and look through windows from outside: no invisible walls, holes or flickering.
    """
    When I manually: walk around inside the phone shop
    Then I confirm: there are no invisible walls or holes inside the shop
    When I manually: go outside and look through the shop windows
    Then I confirm: there is no flickering or missing interior when looking through the windows
