
(select FacilityRecordID from Facilities)except
(select CameoFacilityID from OtherSideFacility) 


insert into OtherSideFacility 
select FacilityName, FCity,FCounty,FCountry,FState,CONVERT(int,FZip),Latitude,Longitude,CONVERT(nvarchar(255), RIGHT(FStreetAddress,255)),FacilityRecordID from [dbo].[Facilities]

insert into OtherSideFacility (CameoFacilityID) 
select FacilityRecordID from Facilities

select FStreetAddress from Facilities  group by FStreetAddress
--select CONVERT(nvarchar(255), RIGHT(FStreetAddress,255)) from Facilities

select * from
(select CONVERT(int,FZip) a, FacilityRecordID from Facilities)as foo where a<10000 
select * from Facilities where FacilityRecordID='FATR20158EMVLL02V6QU'

update  Facilities set FZip='67206' where FacilityRecordID='FATR20158EMVLL02V6QU'

select CONCAT(b.name1,c.name1) from [dbo].[jointtable] a left join [dbo].[tab1] b on a.FacilityID1=b.FacilityID1
	 left join [dbo].[tab2] c on a.FacilityID2=c.FacilityID2

