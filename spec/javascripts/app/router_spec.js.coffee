#= require spec_helper
#= require router

describe "Emberquiz.Router", ->
  it "is an Ember.Router", ->
    assert.ok Emberquiz.Router
    assert.ok Ember.Router.detect(Emberquiz.Router)
