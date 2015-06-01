jest.autoMockOff()

ModelTile = require './../../../../Resources/coffee/models/ModelTile.coffee'
tests = require './testStubs.coffee'

describe 'ModelTile.set', ->

    it 'should properly set given attributes', ->
        for test in tests
            tile = new ModelTile(test.attrs)

            for attr of test.attrs
                expect tile.model[attr]
                    .toBe(test.attrs[attr])

    it 'should properly set `.model.uid` based off of `x` and `y` class arguments', ->
        for test in tests
            tile = new ModelTile(test.attrs)

            expect tile.model.uid
                .toBe(test.expectedUid)