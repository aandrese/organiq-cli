rewire = require 'rewire'
acli = rewire '../lib/cli.js'

expect = require('chai').expect
# EventEmitter = require('events').EventEmitter


fsMock = writeFileSync: (path, data) ->
  expect(path).to.equal '/dev/null'
  expect(path).to.equal JSON.stringify(testPdata, null, 4)
  return

revert = acli.__set__
  fs: fsMock
  optionsPath: '/dev/null'


describe 'writePackageData', ->
  testPdata = null
  beforeEach ->
    testPdata =
      apiRoot: 'https://api.organiq.io/api/v0'
      dpiRoot: 'wss://dpi.organiq.io'
  it 'should handle two arguments', ->
    #acli.writePackageData(testPdata.apiRoot, testPdata.dpiRoot)
  it 'should handle three arguments', ->
    #acli.writePackageData(testPdata.apiRoot, testPdata.dpiRoot,'phony id')
  it 'should handle four arguments', ->
    #acli.writePackageData(testPdata.apiRoot, testPdata.dpiRoot,
    #'phony id','phoney secret')
  it 'should handle five arguments', ->
  it 'should set the local/global cache to null', ->

describe 'readPackageData', ->
  it 'should read the packageData from the local cache'
  it 'should read the optionsPath from the local cache'  
  it 'should read the packageData from the file system'
  
  
describe 'getApiRoot', ->
  it 'should read the api root from the command line'
  #  acli.__set__("argv._", {'apiRoot':12345})
  it 'should read the api root from the ./organiq.json file'
  it 'should read the api root from the environment variable'
                              #  process.env.ORGANIQ_APIROOT
  #  acli.__set__("argv._", {})
  it 'should read the api root from the global files path'
  it 'should set the api root to https://dpi.organiq.io/api/v0'
    
describe 'getDpiRoot', ->
  it 'should read the dpi root from the command line'
  it 'should read the dpi root from the local files path'
  it 'should read the dpi root from process.env.ORGANIQ_dpiROOT'
  it 'should read the dpi root from the global files path'
  it 'should set the dpi root to wss://dpi.organiq.io'


describe 'Task instance', ->
  task1 = task2 =
    name: 'feed the cat'	  
  it 'should have a name', ->
    task1.name = 'feed the cat'
    task1.name.should.equal 'feed the cat'


    
    
    
    
    
revert()
    
    
    
    
    
    
	
	
# describe 'runCli', ->
  # it 'should do something', ->
    # acli.__set__("argv._", {'q','w','e'})
    # expect(argv).to.exist
  # it 'should store package data in cache'
    # acli.argv
    # acli.__get__("path"); // = '/dev/null'
    
# acli.__set__("argv._", {'','',''});

# describe 'readPackageData', ->
  # it 'should store package data in cache'
	
# describe '_responseToText', ->
    # testdata = null
	# statusMessage = null
    # beforeEach ->
      # testdata =
        # email: ['a@example.com','b@example.com','c@example.com']
        # non_field_errors: 2
    # it 'handles 200', ->
      # testResponse =
        # statusCode: 200
        # statusMessage: 'the status message'
      # result = _responseToText 
      # result.should.equal('expected')
    # it 'handles 400', ->
      # testResponse =
        # statusCode: 400
        # statusMessage: 'the status message'
      # result = pd.invoke('f')
      # result.should.equal('expected')
	# it 'handles 500', ->
      # testResponse =
        # statusCode: 500
        # statusMessage: 'the status message'
      # result = pd.invoke('f')
      # result.should.equal('expected')
    # it 'returns a string', ->
  



