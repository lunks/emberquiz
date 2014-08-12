# for more details see: http://emberjs.com/guides/models/defining-models/

class Emberquiz.Card extends DS.Model
  question: DS.attr 'string'
  answer: DS.attr 'string'
