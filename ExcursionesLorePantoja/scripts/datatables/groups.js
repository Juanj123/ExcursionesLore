$(document).ready(function(){
    $('#tableGroups').DataTable({
        'aoColumnDefs' : [{'bSortable' : false, 'aTargets' : [3]}],
        'order' : [[0, 'asc']],
        'language': { 'url': 'scripts/datatables/jquery.dataTables_i18n.spanish.json'}
    }); 
});
