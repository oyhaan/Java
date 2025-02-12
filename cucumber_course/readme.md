# Behavioral Driven Development
BDD vs TDD:
    BDD: focus - written in the perspective of the user
               - Less technical to support non-technical stakeholders

    TDD: focus - written in a more technical way
               - support technical stakeholders(devs, testers, ...)

## Gherkin:
Plain english - with specific rules to phrase user actions.

- user story --> feature
- test case --> scenario
- Background --> repetitive first-occuring steps/preconditions in all tcs in a feature.
- Given --> precondition
    - And --> for more than one precondition
- When --> action
    -> And for more than one action
- Then --> Observations
    -> And for more than one observation
    -> But for caution

- test cases must be reusable