import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  MockHttpClient mockHttpClient;
  setUp(() {
    final String testUrl =
        'https://www.goodreads.com/search.xml?key=TTArz389S9FYdQg3CgqP8A&q=';
    final String testSearchTerm = 'Flutter';
    final String testFullUrl = testUrl + testSearchTerm;
    mockHttpClient = MockHttpClient();
  });
  group('Testing Good Reads SDK', () {
    test('Should perform a Get request on a URL into Good Reads API', () {
      //arrange
      when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
        (_) async => http.Response(any, 200),
      );
      verify(mockHttpClient.get(
        'https://www.goodreads.com/search.xml?key=TTArz389S9FYdQg3CgqP8A&q=Flutter',
        headers: {'Content-Type': 'application/json'},
      ));
    });
  });
}

String testXml = ''' <GoodreadsResponse>
<Request>
<authentication>true</authentication>
<key>
<![CDATA[ TTArz389S9FYdQg3CgqP8A ]]>
</key>
<method>
<![CDATA[ search_search ]]>
</method>
</Request>
<search>
<query>
<![CDATA[ flutter ]]>
</query>
<results-start>1</results-start>
<results-end>20</results-end>
<total-results>1077</total-results>
<source>Goodreads</source>
<query-time-seconds>0.06</query-time-seconds>
<results>
<work>
<id type="integer">13202110</id>
<books_count type="integer">29</books_count>
<ratings_count type="integer">18684</ratings_count>
<text_reviews_count type="integer">587</text_reviews_count>
<original_publication_year type="integer">2010</original_publication_year>
<original_publication_month type="integer">5</original_publication_month>
<original_publication_day type="integer">25</original_publication_day>
<average_rating>3.97</average_rating>
<best_book type="Book">
<id type="integer">30123399</id>
<title>Flutter (My Blood Approves, #3)</title>
<author>
<id type="integer">3486415</id>
<name>Amanda Hocking</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1462559635l/30123399._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1462559635l/30123399._SX50_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">18978518</id>
<books_count type="integer">6</books_count>
<ratings_count type="integer">504</ratings_count>
<text_reviews_count type="integer">122</text_reviews_count>
<original_publication_year type="integer">2012</original_publication_year>
<original_publication_month type="integer">10</original_publication_month>
<original_publication_day type="integer">23</original_publication_day>
<average_rating>3.55</average_rating>
<best_book type="Book">
<id type="integer">13452531</id>
<title>Flutter</title>
<author>
<id type="integer">684067</id>
<name>Gina Linko</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1336498431l/13452531._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1336498431l/13452531._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">56386390</id>
<books_count type="integer">2</books_count>
<ratings_count type="integer">478</ratings_count>
<text_reviews_count type="integer">159</text_reviews_count>
<original_publication_year type="integer">2017</original_publication_year>
<original_publication_month type="integer">7</original_publication_month>
<original_publication_day type="integer">24</original_publication_day>
<average_rating>4.22</average_rating>
<best_book type="Book">
<id type="integer">35083833</id>
<title>Flutter</title>
<author>
<id type="integer">9866530</id>
<name>Olivia Evans</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1497579774l/35083833._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1497579774l/35083833._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">19190956</id>
<books_count type="integer">4</books_count>
<ratings_count type="integer">669</ratings_count>
<text_reviews_count type="integer">109</text_reviews_count>
<original_publication_year type="integer">2014</original_publication_year>
<original_publication_month type="integer">4</original_publication_month>
<original_publication_day type="integer">22</original_publication_day>
<average_rating>3.77</average_rating>
<best_book type="Book">
<id type="integer">15771912</id>
<title>Flutter (The Discover, #1)</title>
<author>
<id type="integer">5816255</id>
<name>Melissa Andrea</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1345228223l/15771912._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1345228223l/15771912._SX50_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">19284657</id>
<books_count type="integer">3</books_count>
<ratings_count type="integer">121</ratings_count>
<text_reviews_count type="integer">17</text_reviews_count>
<original_publication_year type="integer">2011</original_publication_year>
<original_publication_month type="integer">10</original_publication_month>
<original_publication_day type="integer">15</original_publication_day>
<average_rating>3.85</average_rating>
<best_book type="Book">
<id type="integer">13664615</id>
<title>Flutter</title>
<author>
<id type="integer">39834</id>
<name>Momoko Tenzen</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1337047630l/13664615._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1337047630l/13664615._SX50_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">24793020</id>
<books_count type="integer">3</books_count>
<ratings_count type="integer">181</ratings_count>
<text_reviews_count type="integer">29</text_reviews_count>
<original_publication_year type="integer">2013</original_publication_year>
<original_publication_month type="integer">2</original_publication_month>
<original_publication_day type="integer">15</original_publication_day>
<average_rating>3.65</average_rating>
<best_book type="Book">
<id type="integer">17724984</id>
<title>Flutter, Volume One: Hell Can Wait (Flutter, #1)</title>
<author>
<id type="integer">7031221</id>
<name>Jennie Wood</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1364863274l/17724984._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1364863274l/17724984._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">56620729</id>
<books_count type="integer">2</books_count>
<ratings_count type="integer">38</ratings_count>
<text_reviews_count type="integer">19</text_reviews_count>
<original_publication_year type="integer" nil="true"/>
<original_publication_month type="integer" nil="true"/>
<original_publication_day type="integer" nil="true"/>
<average_rating>3.76</average_rating>
<best_book type="Book">
<id type="integer">35265268</id>
<title>Flutter</title>
<author>
<id type="integer">7810819</id>
<name>L.A. Corvill</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1502284220l/35265268._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1502284220l/35265268._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">47315422</id>
<books_count type="integer">2</books_count>
<ratings_count type="integer">101</ratings_count>
<text_reviews_count type="integer">16</text_reviews_count>
<original_publication_year type="integer" nil="true"/>
<original_publication_month type="integer" nil="true"/>
<original_publication_day type="integer" nil="true"/>
<average_rating>4.55</average_rating>
<best_book type="Book">
<id type="integer">27263903</id>
<title>Fluttering Feelings</title>
<author>
<id type="integer">14556039</id>
<name>Ssamba</name>
</author>
<image_url>
https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png
</image_url>
<small_image_url>
https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">71200751</id>
<books_count type="integer">1</books_count>
<ratings_count type="integer">358</ratings_count>
<text_reviews_count type="integer">159</text_reviews_count>
<original_publication_year type="integer">2019</original_publication_year>
<original_publication_month type="integer">7</original_publication_month>
<original_publication_day type="integer">11</original_publication_day>
<average_rating>4.40</average_rating>
<best_book type="Book">
<id type="integer">46225343</id>
<title>Flutter (The Nash Brothers, #3)</title>
<author>
<id type="integer">14160972</id>
<name>Carrie Aarons</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1562800626l/46225343._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1562800626l/46225343._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">57174971</id>
<books_count type="integer">2</books_count>
<ratings_count type="integer">37</ratings_count>
<text_reviews_count type="integer">16</text_reviews_count>
<original_publication_year type="integer" nil="true"/>
<original_publication_month type="integer" nil="true"/>
<original_publication_day type="integer" nil="true"/>
<average_rating>4.43</average_rating>
<best_book type="Book">
<id type="integer">35690482</id>
<title>Flutter</title>
<author>
<id type="integer">15962291</id>
<name>Tara Jenkinson Cignarella</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1500256954l/35690482._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1500256954l/35690482._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">43193103</id>
<books_count type="integer">3</books_count>
<ratings_count type="integer">50</ratings_count>
<text_reviews_count type="integer">6</text_reviews_count>
<original_publication_year type="integer">2015</original_publication_year>
<original_publication_month type="integer">9</original_publication_month>
<original_publication_day type="integer">25</original_publication_day>
<average_rating>4.12</average_rating>
<best_book type="Book">
<id type="integer">23590295</id>
<title>
Flutter, Volume Two: Don't Let Me Die Nervous (Flutter, #2)
</title>
<author>
<id type="integer">7031221</id>
<name>Jennie Wood</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1416427758l/23590295._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1416427758l/23590295._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">877665</id>
<books_count type="integer">8</books_count>
<ratings_count type="integer">129</ratings_count>
<text_reviews_count type="integer">5</text_reviews_count>
<original_publication_year type="integer">2000</original_publication_year>
<original_publication_month type="integer" nil="true"/>
<original_publication_day type="integer" nil="true"/>
<average_rating>3.72</average_rating>
<best_book type="Book">
<id type="integer">892432</id>
<title>Björk: Wow and Flutter</title>
<author>
<id type="integer">340282</id>
<name>Mark Pytlik</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1389828020l/892432._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1389828020l/892432._SX50_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">62941736</id>
<books_count type="integer">5</books_count>
<ratings_count type="integer">41</ratings_count>
<text_reviews_count type="integer">7</text_reviews_count>
<original_publication_year type="integer" nil="true"/>
<original_publication_month type="integer" nil="true"/>
<original_publication_day type="integer" nil="true"/>
<average_rating>3.51</average_rating>
<best_book type="Book">
<id type="integer">40539206</id>
<title>Float, Flutter</title>
<author>
<id type="integer">6210</id>
<name>Marilyn Singer</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1545494781l/40539206._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1545494781l/40539206._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">14085743</id>
<books_count type="integer">7</books_count>
<ratings_count type="integer">853</ratings_count>
<text_reviews_count type="integer">149</text_reviews_count>
<original_publication_year type="integer">2011</original_publication_year>
<original_publication_month type="integer">5</original_publication_month>
<original_publication_day type="integer">12</original_publication_day>
<average_rating>3.82</average_rating>
<best_book type="Book">
<id type="integer">9206116</id>
<title>
Flutter: The Story of Four Sisters and an Incredible Journey
</title>
<author>
<id type="integer">4890834</id>
<name>Erin E. Moulton</name>
</author>
<image_url>
https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png
</image_url>
<small_image_url>
https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">8406379</id>
<books_count type="integer">1</books_count>
<ratings_count type="integer">67</ratings_count>
<text_reviews_count type="integer">5</text_reviews_count>
<original_publication_year type="integer">2009</original_publication_year>
<original_publication_month type="integer" nil="true"/>
<original_publication_day type="integer" nil="true"/>
<average_rating>4.10</average_rating>
<best_book type="Book">
<id type="integer">7271734</id>
<title>Indestructibles Flutter! Fly!</title>
<author>
<id type="integer">3215211</id>
<name>Kaaren Pixton</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1404581264l/7271734._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1404581264l/7271734._SX50_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">24792883</id>
<books_count type="integer">3</books_count>
<ratings_count type="integer">11</ratings_count>
<text_reviews_count type="integer">2</text_reviews_count>
<original_publication_year type="integer">2013</original_publication_year>
<original_publication_month type="integer">1</original_publication_month>
<original_publication_day type="integer">26</original_publication_day>
<average_rating>4.09</average_rating>
<best_book type="Book">
<id type="integer">17724933</id>
<title>Flutter</title>
<author>
<id type="integer">6488892</id>
<name>L.E. Green</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1364859947l/17724933._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1364859947l/17724933._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">20411323</id>
<books_count type="integer">2</books_count>
<ratings_count type="integer">30</ratings_count>
<text_reviews_count type="integer">14</text_reviews_count>
<original_publication_year type="integer">2012</original_publication_year>
<original_publication_month type="integer">6</original_publication_month>
<original_publication_day type="integer">2</original_publication_day>
<average_rating>4.27</average_rating>
<best_book type="Book">
<id type="integer">14760664</id>
<title>Flutter Of Luv</title>
<author>
<id type="integer">3348681</id>
<name>L.M. Preston</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1339036444l/14760664._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1339036444l/14760664._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">57987164</id>
<books_count type="integer">2</books_count>
<ratings_count type="integer">11</ratings_count>
<text_reviews_count type="integer">2</text_reviews_count>
<original_publication_year type="integer">2017</original_publication_year>
<original_publication_month type="integer">12</original_publication_month>
<original_publication_day type="integer">21</original_publication_day>
<average_rating>4.45</average_rating>
<best_book type="Book">
<id type="integer">36314353</id>
<title>Flutter, Volume Three: Rid of Me</title>
<author>
<id type="integer">7031221</id>
<name>Jennie Wood</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1506536083l/36314353._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1506536083l/36314353._SY75_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">58193778</id>
<books_count type="integer">2</books_count>
<ratings_count type="integer">4</ratings_count>
<text_reviews_count type="integer">0</text_reviews_count>
<original_publication_year type="integer">2017</original_publication_year>
<original_publication_month type="integer">10</original_publication_month>
<original_publication_day type="integer">26</original_publication_day>
<average_rating>4.25</average_rating>
<best_book type="Book">
<id type="integer">36602940</id>
<title>A Flutter in the Night (Kyrn's Legacy #1)</title>
<author>
<id type="integer">16851362</id>
<name>Michael S. Gormley</name>
</author>
<image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1510847496l/36602940._SX98_.jpg
</image_url>
<small_image_url>
https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1510847496l/36602940._SX50_.jpg
</small_image_url>
</best_book>
</work>
<work>
<id type="integer">5361179</id>
<books_count type="integer">1</books_count>
<ratings_count type="integer">10</ratings_count>
<text_reviews_count type="integer">0</text_reviews_count>
<original_publication_year type="integer">2008</original_publication_year>
<original_publication_month type="integer">11</original_publication_month>
<original_publication_day type="integer" nil="true"/>
<average_rating>4.50</average_rating>
<best_book type="Book">
<id type="integer">5293752</id>
<title>Flutter</title>
<author>
<id type="integer">2036149</id>
<name>Alice Burdick</name>
</author>
<image_url>
https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png
</image_url>
<small_image_url>
https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png
</small_image_url>
</best_book>
</work>
</results>
</search>
</GoodreadsResponse>''';
