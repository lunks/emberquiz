#= require spec_helper

describe "App.GamesNewController", ->
  beforeEach ->
    Ember.run ->
      store = TestUtil.lookupStore()
      store.pushMany(Emberquiz.Card, {"cards":[{"id":1,"question":"Question number 0","answer":"0"},{"id":2,"question":"Question number 1","answer":"1"},{"id":3,"question":"Question number 2","answer":"2"},{"id":4,"question":"Question number 3","answer":"3"},{"id":5,"question":"Question number 4","answer":"4"}]})

      Test.controller = Emberquiz.__container__.lookup('controller:games_new')
      Test.controller.set 'model', store.all('card')

  it "can display a first card", ->
    expect(Test.controller.nextCard().get('id')).to.eq 1
