#= require spec_helper

describe "Emberquiz.Card", ->
  beforeEach( ->
    Test.store = TestUtil.lookupStore()
  )

  it "is a DS.Model", ->
    assert.ok Emberquiz.Card
    assert.ok DS.Model.detect(Emberquiz.Card)

  describe "attributes", ->
    it 'can be created with both a question and answer', ->
      Ember.run ->
        Test.card = Test.store.createRecord 'card',
        question: 'O rly?', answer: 'Yes!'
