CREATE PROCEDURE [dbo].[SP_INSERTDATA]
(
@NAME VARCHAR(50)
,@EMAILID VARCHAR(50)
,@PASSWORD VARCHAR(50)
,@GENDER VARCHAR(50)
,@DEPARTMENT VARCHAR(50)
,@CITY VARCHAR(50)
)
AS
BEGIN
INSERT INTO TBL_REGISTER VALUES
(
@NAME 
,@EMAILID 
,@PASSWORD 
,@GENDER 
,@DEPARTMENT 
,@CITY 
)
END

----

Create Procedure [dbo].[sp_getlogin]
(
@EmailID varchar(50)
,@password varchar(50)
)
as
begin
Select * from [dbo].[TBL_REGISTER] where Emailid=@emailid and password=@password
end

---


Create Procedure [dbo].[sp_getalldatatbl_register]

as
begin
Select * from [dbo].[TBL_REGISTER]
end


----------

create procedure [dbo].[sp_getdatabyID]
(
@userid int
)

as
begin
select * from [dbo].[TBL_REGISTER] where userid=@userid
end

--------


create procedure [dbo].[SP_UpdateDATA]
(
@NAME varchar(50)
,@EMAILID varchar(50)
,@PASSWORD varchar(50)
,@GENDER varchar(50)
,@DEPARTMENT varchar(50)
,@CITY varchar(50)
,@UserID int
)
as
begin

UPDATE [dbo].[TBL_REGISTER]
   SET [NAME] = @NAME
      ,[EMAILID] = @EMAILID
      ,[PASSWORD] = @PASSWORD
      ,[GENDER] = @GENDER
      ,[DEPARTMENT] = @DEPARTMENT
      ,[CITY] = @CITY
 WHERE Userid=@userid
end
