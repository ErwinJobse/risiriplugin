<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 9/25/2018
 * Time: 10:03 AM
 */ ?>

<div id="tab-artikelen">
    <div class="container">
        <h1>example</h1>
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <table cellspacing="5" class="table table-bordered table-striped" id="myTable"></table>
            </div>
            <div class="col-md-12 col-lg-12">
                <input type="button" class="btn btn-primary" value="Show Data" id="btnGetData" />
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $("#myTable").dynamicTable({
                columns: [{
                    text: "Name",
                    key: "name"
                },
                    {
                        text: "achternaam",
                        key: "achternaam"
                    },

                ],
                data: [{
                    name: 'Mr.  Brown',
                    achternaam: 'honson',
                },
                    {
                        name: 'Ms. Rebeca n',
                        achternaam: 'Joh',
                    },
                ],
                getControl: function (columnKey) {
                    if (columnKey == "achernaam") {
                        return '<input type="text" class="form-control" />';
                    }



                    return '<input type="text" class="form-control" />';
                },
            });

            $('#btnGetData').click(function () {
                var data = $("#myTable").getTableData();
                console.log(data);
            });
        });
    </script>
    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-36251023-1']);
        _gaq.push(['_setDomainName', 'jqueryscript.net']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
        </div>