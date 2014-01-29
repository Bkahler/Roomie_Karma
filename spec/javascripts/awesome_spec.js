//= require spec_helper
// = require households


describe('hideIntro()', function(){
  it('should toggle class to unhide', function(){

    window.location.href = "http://localhost:3000/";
     hideIntro();
     var intro =$('#intro').attr('class');
    // console.log($('#intro').className)
    // intro.should.eq("hide")


  });
});