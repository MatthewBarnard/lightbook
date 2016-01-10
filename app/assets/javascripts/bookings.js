bookings = {}
bookings.init = function () {
    $(document).off('click', '#submit_booking')
    $(document).on('click', '#submit_booking', function () {
        $('#select_date').fadeOut('fast', function () {
            $('#availability_loading').fadeIn('fast', function () {
                var form = $('#date_time_form')
                $.ajax({
                    type: "POST",
                    url: form.attr('action'),
                    data: form.serialize()
                }).success(function (is_available) {
                    $('#availability_loading').fadeOut('fast', function () {
                        if (is_available == "true") {
                            $('#availability_success').fadeIn('fast')
                        } else {
                            $('#availability_danger').fadeIn('fast')
                        }
                    })
                });
            })
        })

    })
}