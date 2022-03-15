abstract class FailureGetCars implements Exception {}

class InvalidPageError implements FailureGetCars {}

class DataSourceError implements FailureGetCars {}
