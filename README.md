# NatureWater-US-river-DO-dataset

Supporting data for a dissolved oxygen (DO) deep learning model for 580 US rivers. Model inputs include:
- time-series daily meteorological forcing from DAYMET: precipitation [mm/d], day length [s/d], maximum and minimum air temperature [°C], snow water equivalent [kg/m<sup>2</sup>], vapor pressure [Pa], and solar radiation [W/m<sup>2</sup>]
- time-series daily streamflow from USGS: discharge Q [mm/d] normalized by basin drainage area 
- time-series biogeochemical data from USGS: specific conductivity (SC), pH, bicarbonate (HCO<sub>3</sub><sup>-</sup>), and dissolved organic carbon (DOC)
- constant basin attributes from GAGES-II: topography, climate, hydrology, land use, soil, and geology, such as coordinates, elevation, basin slope, annual snow fraction, annual and monthly average of precipitation, temperature, and discharge, base flow index (BFI), land use percentages of agriculture, forest, urban, open water, soil depth, soil component percentages of sand, silt, clay, and organic carbon, percentage of dominant geology type. 

<br>  
  
The meteorological forcing data are from the gridded DAYMET dataset (https://daymet.ornl.gov/) that were basin-aggregated using delineated watershed boundaries and Google Earth Engine.

Discharge and the biogeochemical data were downloaded from the USGS National Water Information System (NWIS, https://waterdata.usgs.gov/nwis) using the dataRetrieval R package (a downloading sample script provided). 

Basin attributes were compiled from the Geospatial Attributes of Gages for Evaluating Streamflow dataset, Version II (GAGES-II, https://pubs.er.usgs.gov/publication/70046617).

