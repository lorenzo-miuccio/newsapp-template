import 'dart:convert';

import 'package:data/data.dart';
import 'package:service/src/remote/api_extensions.dart';
import 'package:service/src/remote/news_api_retrofit.dart';


class NewsRemoteDatasourceImpl implements NewsRemoteDatasource {
  final NewsApi _api;

  NewsRemoteDatasourceImpl(this._api);

  @override
  Future<NewsSerializable> searchNewsByCharacters(String characters, {required String lan}) =>
      _api.GETArticlesByCustomQuery(characters: characters, language: lan).catchApiRequestErrors();

  @override
  Future<NewsSerializable> getTopNews({required String country}) =>
      _api.GETTopHeadLines(country: country).catchApiRequestErrors();

  @override
  Future<NewsSerializable> getEverythingArticles() =>
      _api.GETEverythingArticles().catchApiRequestErrors();
}

class NewsRemoteMockImpl extends NewsRemoteDatasourceImpl {

  final String flutterResp = '{"totalResults":4,"articles":[{"source":{"id":"la-repubblica","name":"La Repubblica"},"author":"repubblicawww@repubblica.it (Redazione Repubblica.it)","title":"Piazza Affari in recupero, torna una matricola ad affacciarsi: è Lottomatica","description":"La società che fa capo ad Apollo starebbe organizzando loperazione per raccogliere 1 miliardo e spuntare una valutazione di 5 miliardi. No comment degli interessati","url":"https://www.repubblica.it/economia/finanza/2023/01/12/news/piazza_affari_prova_il_recupero_forse_torna_una_matricola_ad_affacciarsi_e_lottomatica-383175938/","urlToImage":"https://www.repstatic.it/content/nazionale/img/2023/01/12/103447507-81bbf046-888d-4bfd-9bb4-aa98875a7dc0.jpg","publishedAt":"2023-01-12T09:37:04Z","content":"MILANO -bbe far dimenticare il 2022 che è stato nero non solo per lio, ma a… [+1851 chars]"},{"source":{"id":null,"name":"Macitynet.it"},"author":"Antonio Dini","title":"Gli sviluppatori che usano Linux superano quelli che usano Mac","description":"Secondo la survey annuale di StackOverflow Windows è","url":"https://www.macitynet.it/gli-sviluppatori-che-usano-linux-superano-quelli-che-usano-mac/","urlToImage":"https://www.macitynet.it/wp-content/uploads/2021/06/linux-logo-ico-generica-1200.jpg","publishedAt":"2023-01-07T19:29:49Z","content":"Nel mondo Apple ha una riserva enorme di sviluppatori che utilizzano il Mac per un motivo molto semplice. Non esiste altra piattaforma sulla quale gira Xcode, che a sua volta permette di sviluppare l… [+7362 chars]"},{"source":{"id":null,"name":"Html.it"},"author":"Claudio Davide Ferrara","title":"Ubuntu 23.04: in arrivo un nuovo installer scritto in Flutter","description":"Ubuntu 23.04: il team di Canonical sta sviluppando un nuovo installer della distribuzione in FlutterLeggi Ubuntu 23.04: in arrivo un nuovo installer scritto in Flutter","url":"https://www.html.it/magazine/ubuntu-23-04-in-arrivo-un-nuovo-installer-scritto-in-flutter/","urlToImage":"https://www.html.it/app/uploads/2022/12/Ubuntu-23.04-160x160.jpg","publishedAt":"2022-12-19T08:00:14Z","content":"I lavori di sviluppo di Ubuntu 23.04 Lunar Lobster sono ufficialmente partiti a novembre. Il team di coder Canonical ha infatti già da diverso tempo avviato la distribuzione delle daily build e da di… [+1974 chars]"},{"source":{"id":null,"name":"Html.it"},"author":"Martina Oliva","title":"MoneyMonger: app Android per prestiti rubano i dati","description":"I ricercatori di Zimperium hanno scoperto la campagna MoneyMonger che usa app per prestiti per rubare i dati sensibili degli utenti.Leggi MoneyMonger: app Android per prestiti rubano i dati","url":"https://www.html.it/magazine/moneymonger-app-android-per-prestiti-rubano-i-dati/","urlToImage":"https://www.html.it/app/uploads/2022/04/android-army-g3a5b5716d-1920.jpg","publishedAt":"2022-12-19T14:04:38Z","content":"I ricercatori di sicurezza di Zimperium hanno da poco comunicato di aver scovato una nuova campagna, denominata MoneyMonger, che utilizza app per prestiti sviluppate con Flutter (un framework che sem… [+1625 chars]"}]}';
  final String flutteResp = '{"totalResults":1,"articles":[{"source":{"id":"la-repubblica","name":"La Repubblica"},"author":"repubblicawww@repubblica.it (Redazione Repubblica.it)","title":"Piazza Affari in recupero, torna una matricola ad affacciarsi: è Lottomatica","description":"La società che fa capo ad Apollo starebbe organizzando loperazione per raccogliere 1 miliardo e spuntare una valutazione di 5 miliardi. No comment degli interessati","url":"https://www.repubblica.it/economia/finanza/2023/01/12/news/piazza_affari_prova_il_recupero_forse_torna_una_matricola_ad_affacciarsi_e_lottomatica-383175938/","urlToImage":"https://www.repstatic.it/content/nazionale/img/2023/01/12/103447507-81bbf046-888d-4bfd-9bb4-aa98875a7dc0.jpg","publishedAt":"2023-01-12T09:37:04Z","content":"MILANO -bbe far dimenticare il 2022 che è stato nero non solo per lio, ma a… [+1851 chars]"}]}';
  final String emptyResp = '{"totalResults":0,"articles":[]}';

  NewsRemoteMockImpl(super.api);

  @override
  Future<NewsSerializable> searchNewsByCharacters(String characters, {required String lan}) {
    print('search request');
    if(characters == 'flutter') {
      return Future.delayed(const Duration(milliseconds: 1000), () => NewsSerializable.fromJson(jsonDecode(flutterResp)));
    } else if(characters == 'flutte') {
      return Future.delayed(const Duration(milliseconds: 1500), () => NewsSerializable.fromJson(jsonDecode(flutteResp)));
    } else {
      return Future.delayed(const Duration(milliseconds: 1000), () => NewsSerializable.fromJson(jsonDecode(emptyResp)));
    }
  }

}





