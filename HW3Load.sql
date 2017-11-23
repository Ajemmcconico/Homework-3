COPY Aircraft(AircraftType,AircraftConfig,AircraftGroup)
FROM 'libraries\documents\databases\homework3\Aircraft' CSV HEADER;
COPY Carrier(Carrier,CarrierName,CarrierGroup,CarrierGroupNew,CarrierEntity,AircraftType)
FROM 'libraries\documents\databases\homework3\Carrier' CSV HEADER;
COPY State(WAC,StateAbr,StateFIPS,StateName)
FROM 'libraries\documents\databases\homework3\State' CSV HEADER;
COPY City(CityMarketID,Airport,CityName,WAC)
FROM 'libraries\documents\databases\homework3\City' CSV HEADER;
COPY Airport(AirportID,AirportSeqID,CityMarketID)
FROM 'libraries\documents\databases\homework3\Airport' CSV HEADER;
COPY Distance(Distance, DistanceGroup)
FROM 'libraries\documents\databases\homework3\Distance' CSV HEADER;
COPY Airline(AirlineID,Carrier,OriginAirportID,DestAirportID,DeparturesScheduled,DeparturesPerformed,Payload,Seats,Passenegers,Freight,Mail,Distance,RampToRamp,AirTime,Class)
FROM 'libraries\documents\databases\homework3\Airline' CSV HEADER;
COPY AviationCarrier(Carrier,CarrierEntity,CarrierName,CarrierGroup,CarrierGroupNew)
FROM 'libraries\documents\databases\homework3\AviationCarrier' CSV HEADER;
COPY AviationSupport(AirlineID,Carrier,WAC,Region,StartDateSource,ThruDateSource)
FROM 'libraries\documents\databases\homework3\AviationSupport' CSV HEADER;