import 'package:androidmakers_schedule/api/schedule/model/__generated__/schema.schema.gql.dart'
    show possibleTypesMap;
import 'package:androidmakers_schedule/api/schedule/requests/__generated__/all_sessions.data.gql.dart';
import 'package:androidmakers_schedule/api/schedule/requests/__generated__/all_sessions.req.gql.dart';
import 'package:androidmakers_schedule/api/schedule/requests/__generated__/all_sessions.var.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ConfettiAPI {
  Client? _client;

  ConfettiAPI() {
    _init();
  }

  Future<void> _init() async {
    await Hive.initFlutter();
    final Box<dynamic> box = await Hive.openBox("confetti");

    final HiveStore store = HiveStore(box);
    final Cache cache = Cache(
      store: store,
      possibleTypes: possibleTypesMap,
    );

    final HttpLink link = HttpLink(
      'https://confetti-app.dev/graphql',
      defaultHeaders: <String, String>{
        'conference': 'androidmakers2024',
      },
    );

    _client = Client(
      link: link,
      cache: cache,
    );
  }

  Future<Iterable<GAllSessionsData_sessions_nodes>> getSessions({
    bool forceReload = false,
  }) async {
    if (_client == null) {
      await _init();
    }

    final OperationResponse<GAllSessionsData, GAllSessionsVars> response =
        await _client!
            .request(
              GAllSessionsReq(
                (GAllSessionsReqBuilder b) => b
                  ..fetchPolicy = forceReload
                      ? FetchPolicy.NetworkOnly
                      : FetchPolicy.CacheFirst,
              ),
            )
            .first;

    return response.data!.sessions.nodes;
  }
}
