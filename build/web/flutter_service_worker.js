'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "1eafbd5292b0cf765114f1bc06f10945",
"assets/AssetManifest.bin.json": "ece459655b28f9fdf618f9d35ddce620",
"assets/AssetManifest.json": "dc0b10b2cb9c3dd5b63f83d886e4111d",
"assets/assets/images/Designer.png": "b75ce19e405576ef358c8e50e5400fe8",
"assets/assets/images/logo.gif": "c4d6bce4558098c368acfe9757a5d2c1",
"assets/assets/images/tumor1.png": "91024803460c24875277b58a8efd9b29",
"assets/assets/images/tumor10.png": "5993f22f51ff5f6a0790a6f57a46cc5c",
"assets/assets/images/tumor11.png": "a22c1421ebac27985588751239b50714",
"assets/assets/images/tumor12.png": "14ea71cf16e11675cf2406e37e2a5063",
"assets/assets/images/tumor13.png": "6f7b44b7b6102de518e424162d90b062",
"assets/assets/images/tumor14.png": "95b6fd7e790addbd2a65414f83b4931e",
"assets/assets/images/tumor15.png": "35401c3b26fff1e8bc1a709971230783",
"assets/assets/images/tumor16.png": "8fefd89f70dabb0c485869cd346e28af",
"assets/assets/images/tumor17.png": "88cf7a83e2dc406654ce9aa6e2e921c7",
"assets/assets/images/tumor18.png": "1710119b5d089c49982c0c8f4e3e5527",
"assets/assets/images/tumor19.png": "3723cc83810162b1fea2ac426bd6a973",
"assets/assets/images/tumor2.png": "a6344bf017c021b497c88502b0fd3643",
"assets/assets/images/tumor20.png": "a4bbf6ec9e41a800c455bed3229950b5",
"assets/assets/images/tumor21.png": "978321d684d4d973d5136db93b3b9fb1",
"assets/assets/images/tumor22.png": "0fc45afdaf65331410b40a7eb26e4a59",
"assets/assets/images/tumor23.png": "f1b5c15399755551f6128573e22cb636",
"assets/assets/images/tumor24.png": "9fb25be5c3891505b1c3f93cdc2c1301",
"assets/assets/images/tumor25.png": "66c1c09c601919b6e8ba2a7b6b8a74df",
"assets/assets/images/tumor26.png": "3ba9d4fba19c622c94e7215f4cee4dc2",
"assets/assets/images/tumor27.png": "b4b7cb0f3ce6c1921c05d317c1fef62b",
"assets/assets/images/tumor28.png": "f5df5af17b5ecff4cfe87d2f387430ff",
"assets/assets/images/tumor29.png": "136a77b2ee6e7b3ac77df199678aed0c",
"assets/assets/images/tumor3.png": "fd659d41f1b23d9ec5fa98dcc6c2d6ec",
"assets/assets/images/tumor30.png": "7b88ad45695e93f85da86f201314c7da",
"assets/assets/images/tumor4.png": "96bb2891927bf1c5c8fb1253399b3931",
"assets/assets/images/tumor5.png": "89719adb0dafa5c35aefe755d1efd917",
"assets/assets/images/tumor6.png": "746687a5e4e1d6921886cb1b7cf69d5a",
"assets/assets/images/tumor7.png": "36d168296ba469ceaec6964802849b88",
"assets/assets/images/tumor8.png": "5b76976e7c631083c78cfd8bf5d96d20",
"assets/assets/images/tumor9.png": "7b8cc7087988536a334a1465a89e69f0",
"assets/assets/tumors/home.png": "c8dfc08d071925254da9b0353939b639",
"assets/assets/tumors/image1.png": "b5d3593c3db94f4a91a52fb98d53ca59",
"assets/assets/tumors/image10.png": "24b53890ab3fb22d88d702fd8713b8cc",
"assets/assets/tumors/image11.jpg": "e44908182d36cd9c0f7803db0f30a79f",
"assets/assets/tumors/image11.png": "3694201e2393cdb3f648b43a0d527ece",
"assets/assets/tumors/image12.jpg": "fad4268cf95cf9381b63cc8f8b49d0ed",
"assets/assets/tumors/image13.png": "314eeedd11bd74227f39c306c5ce6ae8",
"assets/assets/tumors/image14.jpg": "5774c9ae961c469b9b5075d7341e4e4c",
"assets/assets/tumors/image15(1).jpg": "ace304387b260b87a2debcbe762092d1",
"assets/assets/tumors/image15.jpg": "171bf7716933a998a4a3a2f1213cff79",
"assets/assets/tumors/image15.webp": "171c703ed5ca66afd4345fb3b7bd624a",
"assets/assets/tumors/image16.webp": "386026a4a2526745bfc8d1c939d68cee",
"assets/assets/tumors/image17.jpg": "c57b05c4cf89508a91cf62fe81ed03c4",
"assets/assets/tumors/image18.jpg": "907b35df990ed2d139d9745ed31761b1",
"assets/assets/tumors/image19.jpg": "855302d34ce68fe310d66390b5b0ab78",
"assets/assets/tumors/image2.webp": "28bcbc09e7319474138abe82e07d543f",
"assets/assets/tumors/image20.jpg": "39e4ce7a8919609f6c775b8f4e5ac0da",
"assets/assets/tumors/image21.jpg": "4ba0448772debdc74aab9a555585404b",
"assets/assets/tumors/image22.jpg": "06ce96842eb96ae4f06e26b9f29d9e77",
"assets/assets/tumors/image23.jpg": "6fdfa52cc37499efcf09f9b38a7ad2e6",
"assets/assets/tumors/image24.jpg": "2190d32b4b37f8889ebeb2d3246b4079",
"assets/assets/tumors/image25.jpg": "52f3a7ff851ced33b808c7eaaff856b0",
"assets/assets/tumors/image26.webp": "2ff4db871e1d8fec0175a76be56bd262",
"assets/assets/tumors/image27.png": "b4b03f6b9e7123909bec0c8bdad62554",
"assets/assets/tumors/image28.jpg": "c2267b1ef92ec5183904fbabcdedf39e",
"assets/assets/tumors/image29.png": "f3ef8c82967c4aee450472d891f428da",
"assets/assets/tumors/image3.png": "945749fe0252394b302e758febe195e9",
"assets/assets/tumors/image30.jpg": "71c4870080918a7cbdd0d3c11e63c009",
"assets/assets/tumors/image5(1).jpg": "2848868c791fdfe7dcda7e3090c33bd7",
"assets/assets/tumors/image5.jpg": "faef055ed71624bc07527baff0cf4cf0",
"assets/assets/tumors/image6.jpg": "8dddba1373258ccf9dd4ba1b2e9f7693",
"assets/assets/tumors/image6.png": "9b8ef9e7b7a9cef76548dc5e68832ad8",
"assets/assets/tumors/image7.jpg": "09b05de30754fe29dbf899aef8c5e59f",
"assets/assets/tumors/image8.jpg": "0e640f98f2c4d4cb69f029e020861c88",
"assets/assets/tumors/image9.jpg": "747d11fea1e935a57e1a401afcd39c03",
"assets/assets/tumors/people.png": "9196a896cfb4aded8fc35778c5391a73",
"assets/assets/tumors/radiology/central-giant-cell.jpg": "0e71595aa65c9129e06c8a9aeef52ec8",
"assets/assets/tumors/radiology/central-giant-cell.png": "4fb796a58003f9ceae1d23b8d2473f21",
"assets/assets/tumors/radiology/central-Ossifying.png": "0e794966a21a6681090f2d64cbfd6f39",
"assets/assets/tumors/radiology/ewing.jpg": "5f2455d086c0dd10e92fe1805cc80ea5",
"assets/assets/tumors/radiology/fibrosarcoma.png": "0ee4e61bde6e70131be08d17c364e4be",
"assets/assets/tumors/radiology/malignant-melanoma.png": "4e55d0506ac7b2c0b45e8cd92591118e",
"assets/assets/tumors/radiology/myxoma.jpg": "c59a9367726631973959077e2bd5b13f",
"assets/assets/tumors/radiology/neurifibroma.png": "7df87130edda23d666c4880eb0cb9255",
"assets/assets/tumors/radiology/neurilemmoma.png": "6d1fcea94f072af6dc707b24dc2f2524",
"assets/assets/tumors/radiology/non-hodkins.png": "69571f8bb6bb3ec06d445fb91d82d0b6",
"assets/assets/tumors/radiology/osteoma.png": "a35c9be898d41c21ec7481e554d12185",
"assets/assets/tumors/radiology/osteosarcoma.jpg": "c61598fb763d858c2619cdef372e5e72",
"assets/assets/tumors/radiology/osteosarcoma.png": "1dc47ac67109b9c75f597b516cc8aced",
"assets/assets/tumors/radiology/peripheral-giant-cell(1).jpg": "f21dba934a4b91b71a391f1b9e5eed90",
"assets/assets/tumors/radiology/peripheral-giant-cell.jpg": "ef95993d5694e4013ff4598e82f1614a",
"assets/assets/tumors/radiology/peripheral-giant-cell.png": "46659ef40c66c1d169045e6c1a243dd4",
"assets/assets/tumors/radiology/peripheral-ossifying.png": "262e10f5524452fe10b73732ec1d7f30",
"assets/assets/tumors/radiology/squamous-cell.png": "6ba1dad1fe27c0747d10b2dba90c0330",
"assets/assets/tumors/tumor.png": "97aacf7f7e5e089876c2547211695635",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "8c92556dc1a4e45d7d4be44d192106df",
"assets/NOTICES": "b4663aa9dd967aaf26d634bcb645e626",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "31463e822afdda1f44ec44638bb16111",
"icons/Icon-192.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/Icon-512.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/Icon-maskable-192.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/Icon-maskable-512.png": "d41d8cd98f00b204e9800998ecf8427e",
"index.html": "eb9fcd0d522b5de84c73b7e602cab9a1",
"/": "eb9fcd0d522b5de84c73b7e602cab9a1",
"main.dart.js": "55cfd08a1bdd8b0a4496b81442eaa9c5",
"manifest.json": "652b8d4e8ba79e06b3ebdb648a710f3d",
"splash/img/dark-1x.png": "d41d8cd98f00b204e9800998ecf8427e",
"splash/img/dark-2x.png": "d41d8cd98f00b204e9800998ecf8427e",
"splash/img/dark-3x.png": "d41d8cd98f00b204e9800998ecf8427e",
"splash/img/dark-4x.png": "d41d8cd98f00b204e9800998ecf8427e",
"splash/img/light-1x.png": "d41d8cd98f00b204e9800998ecf8427e",
"splash/img/light-2x.png": "d41d8cd98f00b204e9800998ecf8427e",
"splash/img/light-3x.png": "d41d8cd98f00b204e9800998ecf8427e",
"splash/img/light-4x.png": "d41d8cd98f00b204e9800998ecf8427e",
"version.json": "01beae8ad83d94838cee2f533861339e"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
