class com {
  String? status;
  String? requestId;
  Data? data;

  com({this.status, this.requestId, this.data});

  com.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    requestId = json['request_id'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['request_id'] = this.requestId;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? totalProducts;
  String? country;
  String? domain;
  List<Products>? products;

  Data({this.totalProducts, this.country, this.domain, this.products});

  Data.fromJson(Map<String, dynamic> json) {
    totalProducts = json['total_products'];
    country = json['country'];
    domain = json['domain'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_products'] = this.totalProducts;
    data['country'] = this.country;
    data['domain'] = this.domain;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? asin;
  String? productTitle;
  String? productPrice;
  String? unitPrice;
  int? unitCount;
  String? productOriginalPrice;
  String? currency;
  String? productStarRating;
  int? productNumRatings;
  String? productUrl;
  String? productPhoto;
  Null? productNumOffers;
  String? productMinimumOfferPrice;
  bool? isBestSeller;
  bool? isAmazonChoice;
  bool? isPrime;
  bool? climatePledgeFriendly;
  String? salesVolume;
  String? delivery;

  Products(
      {this.asin,
        this.productTitle,
        this.productPrice,
        this.unitPrice,
        this.unitCount,
        this.productOriginalPrice,
        this.currency,
        this.productStarRating,
        this.productNumRatings,
        this.productUrl,
        this.productPhoto,
        this.productNumOffers,
        this.productMinimumOfferPrice,
        this.isBestSeller,
        this.isAmazonChoice,
        this.isPrime,
        this.climatePledgeFriendly,
        this.salesVolume,
        this.delivery});

  Products.fromJson(Map<String, dynamic> json) {
    asin = json['asin'];
    productTitle = json['product_title'];
    productPrice = json['product_price'];
    unitPrice = json['unit_price'];
    unitCount = json['unit_count'];
    productOriginalPrice = json['product_original_price'];
    currency = json['currency'];
    productStarRating = json['product_star_rating'];
    productNumRatings = json['product_num_ratings'];
    productUrl = json['product_url'];
    productPhoto = json['product_photo'];
    productNumOffers = json['product_num_offers'];
    productMinimumOfferPrice = json['product_minimum_offer_price'];
    isBestSeller = json['is_best_seller'];
    isAmazonChoice = json['is_amazon_choice'];
    isPrime = json['is_prime'];
    climatePledgeFriendly = json['climate_pledge_friendly'];
    salesVolume = json['sales_volume'];
    delivery = json['delivery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['asin'] = this.asin;
    data['product_title'] = this.productTitle;
    data['product_price'] = this.productPrice;
    data['unit_price'] = this.unitPrice;
    data['unit_count'] = this.unitCount;
    data['product_original_price'] = this.productOriginalPrice;
    data['currency'] = this.currency;
    data['product_star_rating'] = this.productStarRating;
    data['product_num_ratings'] = this.productNumRatings;
    data['product_url'] = this.productUrl;
    data['product_photo'] = this.productPhoto;
    data['product_num_offers'] = this.productNumOffers;
    data['product_minimum_offer_price'] = this.productMinimumOfferPrice;
    data['is_best_seller'] = this.isBestSeller;
    data['is_amazon_choice'] = this.isAmazonChoice;
    data['is_prime'] = this.isPrime;
    data['climate_pledge_friendly'] = this.climatePledgeFriendly;
    data['sales_volume'] = this.salesVolume;
    data['delivery'] = this.delivery;
    return data;
  }
}
