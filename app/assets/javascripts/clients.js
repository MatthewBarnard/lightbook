clients = {}
clients.init = function () {
    $(function () {
        $('#table1').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });

    $('.deactivate-client').click(function () {
        var client_id = $(this).attr('client_id')

        if (!$('#confirmation').hasClass('in')){
            $("#confirmation").modal('toggle')
        }
        console.log('run')
        $('#deactivate_client').attr('href', 'clients/' + client_id + '/deactivate')
    })
}