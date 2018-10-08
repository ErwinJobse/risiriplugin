<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/25/2018
 * Time: 10:03 AM
 */ ?>

<div id="tab-artikelen">



        <table id="tabledit" class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>Artikelnummer</th>
                <th>Artikelnaam</th>
                <th>Aanmaakdatum</th>
                <th>omschrijving</th>
            </tr>

            <!-- add artikel row -->
            <tr>
                <td>Artikelnummer</td>
                <td>Artikelnaam</td>
                <td>Aanmaakdatum</td>
                <td>omschrijving</td>
            </tr>
            </thead>
            <tbody></tbody>
        </table>


    <script>
        function viewData(){
            $.ajax({
                url: '<?php echo plugin_dir_url( __FILE__ ) ?>/artikel.php?p=view',
                method: 'GET'
            }).done(function(data){
                $('tbody').html(data)
                tableData()
            })
        }
        function tableData(){
            $('#tabledit').Tabledit({
                url: '<?php echo plugin_dir_url( __FILE__ ) ?>/artikel.php',
                eventType: 'dblclick',
                editButton: true,
                deleteButton: true,
                hideIdentifier: false,
                buttons: {
                    edit: {
                        class: 'btn btn-sm btn-warning',
                        html: '<span class="glyphicon glyphicon-pencil"></span> Edit',
                        action: 'edit'
                    },
                    delete: {
                        class: 'btn btn-sm btn-danger',
                        html: '<span class="glyphicon glyphicon-trash"></span> Trash',
                        action: 'delete'
                    },
                    save: {
                        class: 'btn btn-sm btn-success',
                        html: 'Save'
                    },
                    restore: {
                        class: 'btn btn-sm btn-warning',
                        html: 'Restore',
                        action: 'restore'
                    },
                    confirm: {
                        class: 'btn btn-sm btn-default',
                        html: 'Confirm'
                    }
                },
                columns: {
                    identifier: [0, 'Artikelnummer'],
                    editable: [[1, 'Artikelnaam'],[2, 'Aanmaakdatum'],[3, 'omschrijving'], ]
                },
                onSuccess: function(data, textStatus, jqXHR) {
                    viewData()
                },
                onFail: function(jqXHR, textStatus, errorThrown) {
                    console.log('onFail(jqXHR, textStatus, errorThrown)');
                    console.log(jqXHR);
                    console.log(textStatus);
                    console.log(errorThrown);
                },
                onAjax: function(action, serialize) {
                    console.log('onAjax(action, serialize)');
                    console.log(action);
                    console.log(serialize);
                }
            });
        }
        viewData();
    </script>

        </div>