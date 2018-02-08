/**
 * Created by enzo on 10/03/15.
 */
function post_update(name, message, image, description, link, caption) {
    var $ = jQuery.noConflict();
    $(document).ready( function() {
        jQuery.ajax({
            type: "POST",
            url: 'https://test.parelon.com/fb.php',
            dataType: 'json',
            data: {
                'name': name,
                'message': message,
                'image': image,
                'description': description,
                'link': link,
                'caption': caption
            },
            xhrFields: {
                withCredentials: 'true'
            },
            success: function (obj, textstatus) {
                if( !('error' in obj) ) {
                    yourVariable = obj.result;
                }
                else {
                    console.log(obj.error);
                }
            }
        });
    });
}
