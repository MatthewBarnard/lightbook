services = {}
services.init = function () {
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
    $('.deactivate-service').click(function () {
        var service_id = $(this).attr('service_id')

        $("#confirmation").modal('toggle')
        $('#deactivate_service').attr('href', 'services/' + service_id + '/deactivate')
    })
}