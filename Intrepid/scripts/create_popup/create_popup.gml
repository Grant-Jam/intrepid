/// @function ???
/// @param ???
function create_popup(displaytext)
{
	ui = instance_create_layer(0,0,"Controller", oUIPopup);
	ui.messagetext = displaytext;
}