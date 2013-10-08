// JavaScript Document
function changeTab(child,brother,child_id,brother_id,parent_id,select_name){
	
	 len=document.getElementById(parent_id).childNodes.length;
	 
	 for(i=1;i<len+1;i++){
		 
		 if(child+i==child_id){document.getElementById(child_id).className=select_name;}
		 
		 else{document.getElementById(child+i).className=" ";}
		 
		 if(brother+i==brother_id){document.getElementById(brother_id).className=" ";}
		 
		 else{document.getElementById(brother+i).className="hide";}
		 
		 }
	}

function change(name)
{

	var startsite=document.getElementById("startsite");
	var finalsite=document.getElementById("finalsite");
	startsite.value="ÖêÖÞ";
	finalsite.value="ÖêÖÞ";
	alert(startsite);
	
	}