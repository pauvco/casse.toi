window.onload = function(){
	if ($("addCandidateButton")) {
		$("addCandidateButton").addEvent('click',function(){addCandidate()});
		$("candidateName").addEvent('blur',function(e){checkNewCandidateFied(e)});
		$("candidateUrl").addEvent('blur',function(e){checkNewCandidateFied(e)});
	}

	if ($("addUrlButton")) {
		$("addUrlButton").addEvent('click',function(){alert('')});
		$("candidateUrl").addEvent('blur',function(e){checkNewCandidateFied(e)});
	}



  var width = 0;
  if( typeof( window.innerWidth ) == 'number' ) {
    width = window.innerWidth;
  } else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {
    width = document.documentElement.clientWidth;
  }

  if (width>1000){
    $('mainFrame').style.width="1080px";
    $('container').style.width="1080px";
  }
};

function checkNewCandidateFied(event){
	if (event.target.value.length>0)
	switch (event.target.id){
		case "candidateName":
		

	/// Check if name exists
			
			event.target.set('class', 'inputText-validated');

			break;
		case "candidateUrl":


	/// Validate URL


			event.target.set('class', 'inputText-validated');
			break;

	}
}


function addCandidate(){

	var req = new Request({
	    url: 'target/new.json',
	    method: 'post',
	    data: 'target_name='+$('candidateName').value+'&url='+$('candidateUrl').value,
	    onRequest: function(){
//		myElement.set('text', 'loading...');
	    },
	    onSuccess: function(responseText){
//		myElement.set('text', responseText);
	    },
	    onFailure: function(){
//		myElement.set('text', 'Sorry, your request failed :(');
	    }
	});

	req.send();

}
