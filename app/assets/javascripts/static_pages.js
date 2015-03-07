$(function() {
    $('#example').dataTable( {
        "info":     false,
        "order": [[ 4, "desc" ]]
    } );
    
    $('#toptable').dataTable( {
        "info":     false,
        "lengthMenu": [ 10, 30 ],
        "order": [[ 4, "desc" ]]
    } );
} );
