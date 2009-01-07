jQuery(document).ready(function() {
	$('abbr[class*=timeago]').timeago();	
	setTimeout( function() { $("#flash").slideUp("medium") }, 2000);
});
