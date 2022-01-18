import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

class SourceCode1 extends StatefulWidget {
  const SourceCode1({Key? key}) : super(key: key);
  static const String id = 'source_code_Images';

  @override
  _SourceCode1State createState() => _SourceCode1State();
}

class _SourceCode1State extends State<SourceCode1> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOURCE CODE', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: const Icon(Icons.arrow_back), color: Colors.black, onPressed: (){Navigator.pop(context);},),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: GestureDetector(
              child: PhotoView(
                imageProvider: const AssetImage('assets/images/images_sourceCode.png'),
                minScale: PhotoViewComputedScale.contained,
                enableRotation: false,
                maxScale: 4.0,
              ),
              onTap: (){ _launchURL('https://carbon.now.sh/?bg=rgba%28188%2C200%2C246%2C1%29&t=seti&wt=none&l=dart&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=35px&ph=19px&ln=false&fl=1&fm=Hack&fs=11px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250A%250Aimport%2520%271.source_code.dart%27%253B%250Aimport%2520%272.Buttons_Icons.dart%27%253B%250A%250Aclass%2520ImageAsset%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520ImageAsset%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27asset_images_page%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_ImageAssetState%2520createState%28%29%2520%253D%253E%2520_ImageAssetState%28%29%253B%250A%257D%250A%250Aclass%2520_ImageAssetState%2520extends%2520State%253CImageAsset%253E%2520%257B%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.black%252C%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27ASSETING%2520IMAGES%27%252C%2520style%253A%2520TextStyle%28color%253A%2520Colors.white%252C%2520fontSize%253A%252025%252C%2520fontWeight%253A%2520FontWeight.bold%29%252C%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520leading%253A%2520IconButton%28icon%253A%2520const%2520Icon%28Icons.arrow_back%29%252C%2520color%253A%2520Colors.white%252C%2520onPressed%253A%2520%28%29%257BNavigator.pop%28context%29%253B%257D%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520actions%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520IconButton%28icon%253A%2520const%2520Icon%28Icons.code%29%252C%2520onPressed%253A%2520%28%29%257BNavigator.of%28context%29.pushNamed%28SourceCode1.id%29%253B%257D%252C%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520Colors.black%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520elevation%253A%25200%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%2520%252F%252F%2520AppBar%250A%2520%2520%2520%2520%2520%2520body%253A%2520ListView%28%250A%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520const%2520Center%28child%253A%2520Text%28%27LOCAL%2520IMAGES%27%252C%2520style%253A%2520%2520TextStyle%28color%253A%2520Colors.white%252C%2520fontWeight%253A%2520FontWeight.bold%252C%2520fontSize%253A%252025%29%252C%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520const%2520Image%28image%253A%2520AssetImage%28%27assets%252Fimages%252Flesson%25205%252Fimg.png%27%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Image.asset%28%27assets%252Fimages%252Flesson%25205%252Fimg_1.png%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520const%2520Center%28child%253A%2520Text%28%27NETWORK%2520IMAGES%27%252C%2520style%253A%2520%2520TextStyle%28color%253A%2520Colors.white%252C%2520fontWeight%253A%2520FontWeight.bold%252C%2520fontSize%253A%252025%29%252C%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520const%2520Image%28image%253A%2520NetworkImage%28%27https%253A%252F%252Fmir-s3-cdn-cf.behance.net%252Fproject_modules%252Ffs%252F65e9ab13269831.60ddf9870558d.jpg%27%29%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Image.network%28%27https%253A%252F%252Favatars.mds.yandex.net%252Fget-zen_doc%252F1645803%252Fpub_5f83f043b1a4d95dc0777777_5fabe4bbf68a6a3a7897fdf5%252Fscale_1200%27%29%252C%250A%250A%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%2520%252F%252F%2520ListView%250A%2520%2520%2520%2520%2520%2520floatingActionButton%253A%2520FloatingActionButton%28%250A%2520%2520%2520%2520%2520%2520%2520%2520backgroundColor%253A%2520const%2520Color%280xFF00c700%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520const%2520Icon%28Icons.arrow_forward_ios_outlined%252C%2520color%253A%2520Colors.white%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520onPressed%253A%2520%28%29%257BNavigator.of%28context%29.pushNamed%28ButtonsAndIcons.id%29%253B%257D%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%2520%252F%252F%2520FloatingActionButton%250A%2520%2520%2520%2520%29%253B%2520%252F%252F%2520Scaffold%250A%2520%2520%257D%250A%257D%250A');},
            ),
          ),
        ),
      ),
    );
  }
}
