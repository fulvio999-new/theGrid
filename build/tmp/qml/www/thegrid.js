$(function () {

    /* Amount of Rows */
    for (var i = 0; i < 25; ++i) {
        data.push({
            "id": i + 1
        });
    }

    var columns = [];

    columns.push({
        name: "id",
        type: "int"
        //style:{"font-weight": "bold"}

    });

    for (var i = 1; i < 10; i++) {
        columns.push({
          id: i,
          name: String.fromCharCode("A".charCodeAt(0) + (i % 26) | 0),
          type: "string",
          width: 180,
          editor: "TextareaEditor"
        });
    }

    // initialization grid options
    var options = {
        // add an empty row at the end of grid
        emptyRow: false,
        // enable sortable callbacks
        sortable: false,
        // disable specific keys
        disableKeys: [],
        // move active cell when a row is removed
        moveOnRowRemove: true,
        // skip these cells on duplicate action
        skipOnDuplicate: ["id"],
        // set the initial order of table
        initialSort: {col: "id", order: "asc"},
        selectable: false
    };

    // initialize grid with data, column mapping and options
    grid = $(".sensei-grid-default").grid(data, columns, options);

    // register editors that are bundled with sensei grid
    grid.registerEditor(BasicEditor);
    grid.registerEditor(BooleanEditor);
    grid.registerEditor(TextareaEditor);
    grid.registerEditor(SelectEditor);
    grid.registerEditor(DateEditor);
    grid.registerEditor(AutocompleteEditor);
    grid.registerEditor(DisabledEditor);


    grid.registerRowAction(DeleteRowAction);
    // register row actions
    //not defined grid.registerRowAction(BasicRowActions);

    // example listeners on grid events
    grid.events.on("editor:save", function (data, $cell) {
        //console.info("save cell:", data, $cell);
    });
    grid.events.on("editor:load", function (data, $cell) {
        //console.info("set value in editor:", data, $cell);
    });
    grid.events.on("cell:select", function ($cell) {
        //console.info("active cell:", $cell);
    });
    grid.events.on("cell:clear", function (oldValue, $cell) {
        //console.info("clear cell:", oldValue, $cell);
    });
    grid.events.on("cell:deactivate", function ($cell) {
        //console.info("cell deactivate:", $cell);
    });
    grid.events.on("row:select", function ($row) {
        //console.info("row select:", $row);
    });
    grid.events.on("row:remove", function (data, row, $row) {
        //console.info("row remove:", data, row, $row);
        console.log("REMOVING 22222222");


        //var div = document.createElement("div");

        //div.innerHTML = "gdfdghdghgth";

        //$(div).text("BUUUUUUUUUUUUUUUu");

    });
    grid.events.on("row:mark", function ($row) {
        //console.info("row mark:", $row); //flaggato col id
    });
    grid.events.on("row:unmark", function ($row) {
        //console.info("row unmark:", $row); //deflaggato col id
    });

    /* row saved and a new line is added */
    grid.events.on("row:save", function (data, $row, source) {
        //console.info("row save:", source, data);
        //console.log("$row:", $row);
        // save row via ajax or any other way
        // simulate delay caused by ajax and set row as saved
        setTimeout(function () {
            grid.setRowSaved($row);
        }, 1000);
    });

    // implement basic sorting (necessary have option sortable=true)
    /*
    grid.events.on("column:sort", function (col, order, $el) {
        console.info("column sort:", col, order, $el);
        var sorted = _.sortBy(data, col);
        if (order === "desc") {
            sorted = sorted.reverse();
        }
        grid.updateData(sorted);
    });
    */



    // render grid
    grid.render();

    // api examples
    var $row = grid.getRowByIndex(5);

    /*
    console.group("data api examples");
    console.log("grid.getRowDataByIndex(0):", grid.getRowDataByIndex(0));
    console.log("grid.getRowData($row):", grid.getRowData($row));
    console.log("grid.getCellDataByIndex(0, 1):", grid.getCellDataByIndex(0, 1));
    console.log("grid.getCellDataByKey(2, created_at):", grid.getCellDataByKey(2, "created_at"));
    console.log("grid.getGridData():", grid.getGridData());
    console.groupEnd();
    */

    // disable sorting for rest of the grids
    options.sortable = false;
    options.selectable = true;
    //options.toolbar = true;

    window.grids = [grid];

});
