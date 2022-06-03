

CREATE PROCEDURE [dbo].[SP_Login] 
    @EMAIL VARCHAR(100),
    @PASSWORD VARCHAR(50),
    @ReturnValue INT
AS
BEGIN

    -- No User
    IF NOT EXISTS (Select * From TBL_REGISTER Where EMAIL=@EMAIL and PASSWORD = @PASSWORD)
        BEGIN
            SET @ReturnValue = 0
        END

    -- Active User
    ELSE IF EXISTS (Select * From TBL_REGISTER Where EMAIL=@EMAIL and PASSWORD = @PASSWORD )
        BEGIN
            SET @ReturnValue = 1
        END

    -- Not Active user
    ELSE IF EXISTS (Select * From TBL_REGISTER Where EMAIL=@EMAIL and PASSWORD = @PASSWORD )
        BEGIN
            SET @ReturnValue = 2
        END

    -- EMAIL Not Exist
    ELSE IF NOT EXISTS (Select * From TBL_REGISTER Where EMAIL=@EMAIL)
        BEGIN
            SET @ReturnValue = 3
        END

    -- PASSWORD Not Match
    ELSE IF EXISTS (Select * From TBL_REGISTER Where EMAIL=@EMAIL)
        BEGIN
            SET @ReturnValue = 4
        END
END