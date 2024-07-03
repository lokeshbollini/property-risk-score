CREATE TABLE MasterData1 AS
SELECT 
    A.*,
    CV.*,
    HC.*,
    P.*,
    SV.*
FROM 
    Assessment AS A
LEFT JOIN 
    Code_Violations AS CV ON A.PrintKey = CV.SBL
LEFT JOIN 
    Court_Cases AS HC ON A.Address = HC.Address
LEFT JOIN 
    Permits AS P ON A.SBL = P.SBL
LEFT JOIN 
    Service_Requests_311 AS SV ON A.PrintKey = SV.PropertyID;
