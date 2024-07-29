import 'package:e_commerce/screens/bag.dart';
import 'package:e_commerce/screens/favorites.dart';
import 'package:e_commerce/screens/first_screen.dart';
import 'package:e_commerce/screens/home.dart';
import 'package:e_commerce/screens/profile.dart';
import 'package:e_commerce/screens/shop.dart';


String username = "";
String useremail = "";


const gicon =
    "https://static-00.iconduck.com/assets.00/google-icon-2048x2048-tmg5cp5v.png";
const fbicon =
    "https://static.vecteezy.com/system/resources/previews/018/930/476/original/facebook-logo-facebook-icon-transparent-free-png.png";
const homeimg =
    "https://plus.unsplash.com/premium_photo-1683121263622-664434494177?q=80&w=3088&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

const clothes = [
  "https://rukminim2.flixcart.com/image/850/1000/xif0q/dress/j/x/s/m-fk-black-dress-sri-sri-ecommerce-original-imaggdyf23n2jm9g.jpeg?q=90&crop=false",
  "https://5.imimg.com/data5/SELLER/Default/2024/2/386990075/UW/DH/GB/142262681/western-dress-ecommerce-photography-with-indian-models.jpg",
  "https://rukminim2.flixcart.com/image/850/1000/xif0q/dress/z/r/2/xl-fk-1003-sri-sri-ecommerce-original-imagnbykgrch5dsz.jpeg?q=90&crop=false",
  "https://cdn.moglix.com/p/YSONsvNBG1IOd-xxlarge.jpg",
  "https://5.imimg.com/data5/SELLER/Default/2023/10/350842798/TI/UT/NI/103206253/art-3713-500x500.jpg",
];

const womencategorieurl = [
  "https://img.etimg.com/thumb/width-1200,height-1200,imgsize-1009792,resizemode-75,msid-80459345/tech/technology/e-commerce-spots-a-new-fashion-trend.jpg",
  "https://digitalscholar.in/wp-content/uploads/2022/09/seo-tips-for-fashion-e-commerce-website.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZkfoKzTJgrOOTwkg1r7r3T9rYsPUHR683Ng&s",
  "https://www.jiomart.com/images/product/original/rvq0mo1gn5/exotique-stylish-butterfly-choker-necklace-for-women-and-girls-product-images-rvq0mo1gn5-0-202305022039.jpg?im=Resize=(1000,1000)",
];

const womencategories = ["New", "Clothes", "Shoes", "Accessories"];

const bagurls = [
  "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/21988790/2023/9/19/d17980a1-2dbd-4661-a0e3-52253a9e5af71695105740645-Roadster-Men-Shirts-1241695105740143-1.jpg",
  "https://rukminim2.flixcart.com/image/850/1000/xif0q/dress/h/k/g/l-lw-9102-b-tilton-original-imagjup95gdv5cec.jpeg?q=90&crop=false",
  "https://images.meesho.com/images/products/349558649/kndoa_512.webp",
];
const bagurlcolor = ["Navy Blue", "Dark Blue", "pink"];
const dresstype = ["shirt", "frock", "frock"];
const size = ["L", "M", "M"];
const price = ["51", "30", "43"];

const mastercardimg =
    "https://brand.mastercard.com/content/dam/mccom/brandcenter/brand-history/brandhistory_nmc_120_2x.png";

const upsimg =
    "https://www.pngitem.com/pimgs/m/163-1638535_usps-com-logo-vector-hd-png-download.png";
const fedeximg =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6oROAjEIzIYPMAGGUUCx4hKvGoQatURJdA&s";

const dhlimg =
    "https://lexprotector.com/wp-content/uploads/sites/7/2021/10/DHL-LOGO.jpg";

const successimg =
    "https://raw.githubusercontent.com/Mahmoudagha01/ShoPack-App-With-Clean-Architecture/main/assets/images/success.png";

const profiledp =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU7DfPQxKtMCKZA09FQquvk-LOLJTA6qa72Q&s";

const profiletitles = [
  "My Orders",
  "Shipping addresses",
  "Payment Methods",
  "Promocodes",
  "My Reviews",
  "Settings"
];

const profilesubtitles = [
  "Already have 12 orders",
  "3 addresses",
  "visa **34",
  "You have special promocodes",
  "Reviews 4 times",
  "Notifications,password"
];

const offerurls = [
  "https://i.pinimg.com/236x/3b/90/06/3b9006d155623130aacc33e72b5c4ed1.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJv2SpCIJsMleFBmRwFful01BTFw2G9u54Hj-vqMu_87Me49T9y64xmpDxV4DSxHLi6lg&usqp=CAU",
  "https://freerangestock.com/sample/49244/ten-percent-sign-shows-sale-discount-or-10-off.jpg",
];

const promocodes = ["mypromocode2020", "summer2020", "mypromocode2020"];
const promonames = ["Persional Offer", "Summer Sale","Persional Offer"];
const daysleft  = ["6","23","6"];

const screens = [
  HomeScreen(),
  ShopScreen(),
  BagScreen(),
  FavoritesScreen(),
  ProfileScreen(),
];
