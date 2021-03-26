// import 'package:artemis/artemis.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:catalog/core/constants/values.dart';

// final client = ArtemisClient(
//   '${baseUrl}/query',
// );
final client = HttpLink(
  '${baseUrl}/query',
);