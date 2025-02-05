-- Trigger : log - table for booklogs : LogID, BookID, LogDatetime

create table Booklog(
 LogID int auto_increment,
 BookID int ,
 LogDatetime datetime ,
 primary key (LogID)
 );
 
 select * from Booklog;
 
 -- trigger after insertion
 
DELIMITER //

CREATE TRIGGER after_book_insert
AFTER INSERT ON Books
FOR EACH ROW
BEGIN
  INSERT INTO Booklog (BookID, LogDatetime) VALUES (NEW.BookID, NOW()); -- current_date() now()
END//

DELIMITER ;

-- event
  
  set global event_scheduler = ON;
  
  create event clear_logs
  on schedule every 1 year starts '2026-01-01 00:00:00'
  do 
   delete from Booklog where LogDatetime < now();
   
drop event clear_logs;