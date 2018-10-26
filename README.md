# A HAPI Service Interface for LaTiS

## Abstract
We present an implementation of the Heliophysics Application
Programmer’s Interface (HAPI) 2.0 specification built upon LaTiS. Our
implementation will enable HAPI clients to access datasets already
served by LaTiS, like those available on the LASP Interactive Solar
Irradiance Data Center (LISIRD). We will also enable LaTiS to serve
and operate on datasets served by HAPI-compliant servers.

HAPI is an interoperable, REST-style interface to timeseries data. It
provides mechanisms for viewing a catalog of datasets, accessing
dataset metadata, and streaming datasets subset both in time and
parameters.

LaTiS is both a library and a service for manipulating and serving
data modeled using the functional data model. The functional data
model is a specialization of the relational data model in which
relations are strengthened to functions, providing richer semantics
useful for representing scientific data.

Our service is a HAPI-compliant service interface over the LaTiS
library written in purely functional Scala using the http4s web
framework. Like other LaTiS service interfaces, we translate requests
into operations over the functional data model. By building on LaTiS
we are able to take advantage of existing adapters to data sources. In
addition, by adapting to HAPI-compliant services we can offer access
to their datasets through LaTiS clients and enable additional
operations.
