void main() {
  Distance d1 = Distance.cms(5);
  Distance d2 = Distance.kms(5);

  print((d1 + d2).meters);
}

class Distance {
  final double _meter;

  Distance.cms(double meter) : this._meter = meter / 100;
  Distance.meters(double meter) : this._meter = meter;
  Distance.kms(double meter) : this._meter = meter * 1000;
  
  Distance._(this._meter);

  Distance operator +(Distance another) {
    return Distance._(this._meter + another._meter);
  }

  double get cms => this._meter * 100;
  double get meters => this._meter;
  double get kms => this._meter / 1000;
}

// First solutiuon. Not happy about it so I tried again.
// class Distance {
//   final double _cms;
//   final double _meters;
//   final double _kms;

//   Distance.cms(double length) 
//   : this._cms = length,
//     this._meters = length / 100.0,
//     this._kms = length / 100000.0;

//   Distance.meters(double length) 
//   : this._cms = length * 100.0,
//     this._meters = length,
//     this._kms = length / 1000.0;

//   Distance.kms(double length) 
//   : this._cms = length * 100000.0,
//     this._meters = length * 1000.0,
//     this._kms = length;
  
//   Distance operator +(Distance another) {
//     return Distance.meters(this._meters + another._meters);
//   }

//   get cms => this._cms.toStringAsFixed(5);
//   get meters => this._meters.toStringAsFixed(5);
//   get kms => this._kms.toStringAsFixed(5);
// }
