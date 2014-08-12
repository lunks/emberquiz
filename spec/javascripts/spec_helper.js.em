# Load all testing support files
#= require_tree ./support

#= require application
#= require ember-mocha-adapter/adapter.js

Emberquiz.setupForTesting()
Emberquiz.injectTestHelpers()

# **** Utility methods (for tests only - not for use in apps) ***
window.TestUtil ||=
  lookupStore: ->
    Emberquiz.__container__.lookup 'store:main'

  lookupRouter: ->
    Emberquiz.__container__.lookup 'router:main'

  appendView: ->
    view.append '#konacha'

window.Test ||= {}


# Stub out Konacha.reset()
Konacha.reset = Ember.K

beforeEach  ->
  # reset all test variables!
  window.Test = {}

afterEach ->
  # Reset Emberquiz
  Emberquiz.reset()

mocha.ui 'bdd'
chai.config.includeStack = true
ENV = {TESTING: true}
Emberquiz.advanceReadiness()
