import 'package:flutter_github_connect/bloc/User/User_model.dart';
import 'package:flutter_github_connect/bloc/User/model/event_model.dart';
import 'package:flutter_github_connect/bloc/User/model/gist_model.dart';
import 'package:flutter_github_connect/bloc/issues/index.dart';
import 'package:flutter_github_connect/bloc/notification/index.dart';
import 'package:flutter_github_connect/bloc/search/index.dart';
import 'package:flutter_github_connect/model/pul_request.dart';

abstract class ApiGateway{
   Future<UserModel> fetchUserProfile();
   Future<List<EventModel>> fetchUserEvent();
   Future<List<RepositoryModel>> fetchRepositories();
   Future<List<NotificationModel>>  fetchNotificationList();
   Future<List<dynamic>> searchQuery({GithubSearchType type, String query});
   Future<List<IssuesModel>> fetchIssues();
   Future<UserPullRequests> fetchPullRequest();
    Future<Gists> fetchGistList();
}