jQuery(document).ready(function() {
	$('abbr[class*=timeago]').timeago();	
	setTimeout( function() { $("#flash").fadeOut("slow") }, 3000);
});
