
/*
  DAO with the generic functions . For function related with a specific entity see js file inside entiy folder
*/

//----------------------------------- UTILITY FUNCTIONS --------------------------------

  function getDatabase() {
      return LocalStorage.openDatabaseSync("theGrid_db", "1.0", "StorageDatabase", 1000000);
  }

//------------------------- Application INIT functions (invoked on firts use)------------------

  function initAppFirtsUse(){
     createGridContentsTable();
  }

//------------------------ CREATE TABLES: on for each entity managed by the App -----------------------

  /* table with the DataGrid (grid_contents) data sored as key-value pair (content_name - grid_content) */
  function createGridContentsTable() {
        var db = getDatabase();
        db.transaction(
           function(tx) {
               tx.executeSql('CREATE TABLE IF NOT EXISTS grid_contents(id INTEGER PRIMARY KEY AUTOINCREMENT, content_name TEXT, grid_content TEXT)');
           });
  }


 //------------------------- CRUD Methods on the tables -------------------------

     /* Insert a new grid_content (as json) identified by a contentName */
     function insertGridContent(contentName, gridContent){

           var db = getDatabase();
           var res = true;

           db.transaction(function(tx) {
               var rs = tx.executeSql('INSERT INTO grid_contents (content_name, grid_content) VALUES (?,?);', [contentName, gridContent]);
               if (rs.rowsAffected > 0) {
                   res = true;
               } else {
                   res = false;
               }
           }
           );

           return res;
      }

      /* update an existing grid content */
      function updateGridContent(contentName, gridContent){

          //console.log("Updating content_name: "+contentName)

          var db = getDatabase();
          var res = true;

          db.transaction(function(tx) {
              var rs = tx.executeSql('UPDATE grid_contents SET grid_content=? WHERE content_name=?;', [gridContent,contentName]);
              if (rs.rowsAffected > 0) {
                  res = true;
              } else {
                  res = false;
              }
          }
          );

          return res;
      }

      /*
         Check if a gridContent (ie a json) is alredy saved with the provied contentName
         Return true if contentName already exist.
      */
      function checkForContentNameDuplicated(contentName){

          var db = getDatabase();

          var rs = "";

          /* get min_value o max_value is the same: is no possible insert only one value */
          db.transaction(function(tx) {
              rs = tx.executeSql("SELECT id FROM grid_contents p where content_name ='"+contentName+"'");
             }
          );

          /* check if value is missing or not */
          if (rs.rows.length > 0) {
              return true;
          } else {
              return false; //not exist
          }
      }


      /*
         Delete the gridContent (ie a Json) saved with the provided contentName
      */
      function deleteGridContent(contentName){

          var db = getDatabase();
          var res = true;
          var rs;

          db.transaction(function(tx) {
               rs = tx.executeSql('DELETE FROM grid_contents WHERE content_name =?;',[contentName]);
             }
          );

          if (rs.rowsAffected > 0) {
              res = true;
          } else {
              res = false;
          }

          return res;
      }


     /*
       return the stored gridContent with the provided contentName.
       return "NO_DATA_FOUND" string if no content is found
     */
     function loadGridContentByName(contentName){

           var db = getDatabase();
           var rs = "";

           db.transaction(function(tx) {
                rs = tx.executeSql("select grid_content from grid_contents b where content_name = '"+contentName+"'");
              }
           );

           if (rs.rowsAffected > 0) {
              return rs.rows.item(0).grid_content;
           }else {
              console.log("NO grid_content found with content_name: "+content_name);
              return "NO_DATA_FOUND";
           }
      }


      /*
        Load the content with the provides name to show it in the grid
      */
      function loadContent(contentName){

         var db = getDatabase();
         var rs = "";
         db.transaction(
            function(tx) {
                 rs = tx.executeSql("select grid_content from grid_contents where content_name='"+contentName+"'");
         });

         return rs.rows.item(0).grid_content;

      }

      /*
        Delete the content with the provides name
      */
      function deleteContent(contentName){

         //console.log("Deleting grid content_name:"+contentName);

         var db = getDatabase();
         var rs = "";
         db.transaction(
           function(tx) {
               rs = tx.executeSql("DELETE FROM grid_contents where content_name='"+contentName+"'");
         });

        return rs.rowsAffected;
      }

     /*
       return ALL the stored content names.
       return "No content found" string if no content is found
     */
     function loadAllContentName(){

           savedContentNameListModel.clear();

           var db = getDatabase();
           var rs = "";

           db.transaction(function(tx) {
                rs = tx.executeSql("select content_name from grid_contents");
              }
           );

            for(var i =0;i < rs.rows.length;i++) {
                savedContentNameListModel.append({"content_name" : rs.rows.item(i).content_name } );
                //console.log("Found content name: "+rs.rows.item(i).content_name);
            }
     }


//---------------------------------- Utility Functions -------------------------
     /* Delete the table with the name in argument */
     function deleteAllContent(){
         var db = getDatabase();
         var rs = "";
         db.transaction(
           function(tx) {
                rs = tx.executeSql('DELETE FROM grid_contents');
           });

         return rs.rowsAffected;
     }


/* -------------------------------------------------------------------------- */

/*
   Utility to format the javascript Date object to have double digit for day and month (default is one digit in js)
   return a string date like: YYYY-MM-DD
*/
function formatDateToString(date)
{
    var dd = (date.getDate() < 10 ? '0' : '') + date.getDate();
    var MM = ((date.getMonth() + 1) < 10 ? '0' : '') + (date.getMonth() + 1);
    var yyyy = date.getFullYear();

    return (yyyy + "-" + MM + "-" + dd);
}
