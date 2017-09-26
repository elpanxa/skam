.class public Lio/casper/android/l/a;
.super Lio/casper/android/l/a/a;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/l/a$a;
    }
.end annotation


# static fields
.field public static final AD_NETWORK_ADMOB:Ljava/lang/String; = "ADMOB"

.field public static final AD_NETWORK_AVOCARROT:Ljava/lang/String; = "AVOCARROT"

.field public static final AD_NETWORK_MOBFOX:Ljava/lang/String; = "MOBFOX"

.field public static final AD_NETWORK_MOPUB:Ljava/lang/String; = "MOPUB"

.field public static final AD_NETWORK_REVMOB:Ljava/lang/String; = "REVMOB"

.field public static final PREFERENCE_ADS_ADMOB_BANNER:Ljava/lang/String; = "pref_ads_admob_banner"

.field public static final PREFERENCE_ADS_ADMOB_INTERSTITIAL:Ljava/lang/String; = "pref_ads_admob_interstitial"

.field public static final PREFERENCE_ADS_AVOCARROT_API_KEY:Ljava/lang/String; = "pref_ads_avocarrot_api_key"

.field public static final PREFERENCE_ADS_AVOCARROT_PLACEMENT_KEY:Ljava/lang/String; = "pref_ads_avocarrot_placement_key"

.field public static final PREFERENCE_ADS_COUNTER_INTERSTITIAL:Ljava/lang/String; = "pref_ads_counter_interstitial"

.field public static final PREFERENCE_ADS_FALLBACK:Ljava/lang/String; = "pref_ads_fallback"

.field public static final PREFERENCE_ADS_FREQUENCY_INTERSTITIAL:Ljava/lang/String; = "pref_ads_frequency_interstitial"

.field public static final PREFERENCE_ADS_MOBFOX_ID:Ljava/lang/String; = "pref_ads_mobfox_id"

.field public static final PREFERENCE_ADS_MOBFOX_ID_INTERSTITIAL:Ljava/lang/String; = "pref_ads_mobfox_id_interstitial"

.field public static final PREFERENCE_ADS_MOPUB_BANNER:Ljava/lang/String; = "pref_ads_mopub_banner"

.field public static final PREFERENCE_ADS_MOPUB_INTERSTITIAL:Ljava/lang/String; = "pref_ads_mopub_interstitial"

.field public static final PREFERENCE_ADS_NETWORK:Ljava/lang/String; = "pref_ads_network"

.field public static final PREFERENCE_ADS_NETWORK_INTERSTITIAL:Ljava/lang/String; = "pref_ads_network_interstitial"

.field public static final PREFERENCE_ADS_NETWORK_ORDER_BANNER:Ljava/lang/String; = "pref_ads_network_order_banner"

.field public static final PREFERENCE_ADS_NETWORK_ORDER_INTERSTITIAL:Ljava/lang/String; = "pref_ads_network_order_interstitial"

.field public static final PREFERENCE_ADS_REVMOB_MEDIA_ID:Ljava/lang/String; = "pref_ads_revmob_media_id"

.field public static final PREFERENCE_ADS_STARTAPP_ACCOUNT_ID:Ljava/lang/String; = "pref_ads_startapp_account_id"

.field public static final PREFERENCE_ADS_STARTAPP_APP_ID:Ljava/lang/String; = "pref_ads_startapp_app_id"

.field public static final PREFERENCE_ADS_STARTAPP_DISPLAY_NATIVE_SNAPS:Ljava/lang/String; = "pref_ads_startapp_display_native_snaps"

.field public static final PREFERENCE_ADS_STARTAPP_DISPLAY_NATIVE_STORIES:Ljava/lang/String; = "pref_ads_startapp_display_native_stories"

.field private static final TAG:Ljava/lang/String; = "AdManager"


# instance fields
.field private mAddonManager:Lio/casper/android/l/b;

.field private mInternalAdListenerBanner:Lio/casper/android/l/a$a;

.field private mInternalAdListenerInterstitial:Lio/casper/android/l/a$a;

.field private mRevmobFullscreen:Lcom/revmob/ads/fullscreen/RevMobFullscreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lio/casper/android/l/b;

    iget-object v1, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/a;->mAddonManager:Lio/casper/android/l/b;

    .line 99
    return-void
.end method

.method static synthetic a(Lio/casper/android/l/a;)Lio/casper/android/l/a$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/l/a;->mInternalAdListenerBanner:Lio/casper/android/l/a$a;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/l/a;)Lio/casper/android/l/a$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/l/a;->mInternalAdListenerInterstitial:Lio/casper/android/l/a$a;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/l/a;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/l/a;->mRevmobFullscreen:Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    const-string v0, "pref_ads_admob_banner"

    const-string v1, "ca-app-pub-1709125857628693/8981810762"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 146
    const-string v0, "pref_ads_frequency_interstitial"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    .line 307
    invoke-virtual {p0}, Lio/casper/android/l/a;->p()Ljava/util/List;

    move-result-object v0

    .line 309
    const-string v1, "AdManager"

    const-string v2, "initializeAdBanner networkOrder=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    new-instance v1, Lio/casper/android/l/a$12;

    invoke-direct {v1, p0, v0, p1}, Lio/casper/android/l/a$12;-><init>(Lio/casper/android/l/a;Ljava/util/Iterator;Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lio/casper/android/l/a;->mInternalAdListenerBanner:Lio/casper/android/l/a$a;

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/l/a;->mInternalAdListenerBanner:Lio/casper/android/l/a$a;

    invoke-virtual {p0, p1, v0, v1}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Lio/casper/android/l/a$a;)V

    .line 340
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;Ljava/lang/String;Lio/casper/android/l/a$a;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 344
    if-eqz p1, :cond_0

    iget-object v1, p0, Lio/casper/android/l/a;->mAddonManager:Lio/casper/android/l/b;

    invoke-virtual {v1}, Lio/casper/android/l/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const-string v1, "AdManager"

    const-string v2, "initializeAdBanner network=%s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    move v0, v6

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 509
    if-eqz p3, :cond_0

    .line 510
    invoke-interface {p3}, Lio/casper/android/l/a$a;->c()V

    goto :goto_0

    .line 350
    :sswitch_0
    const-string v0, "ADMOB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "MOBFOX"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :sswitch_2
    const-string v0, "REVMOB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "MOPUB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 354
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 356
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {p0}, Lio/casper/android/l/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 358
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 360
    new-instance v2, Lio/casper/android/l/a$13;

    invoke-direct {v2, p0, p3}, Lio/casper/android/l/a$13;-><init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 377
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 378
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 386
    :pswitch_1
    new-instance v0, Lcom/adsdk/sdk/banner/AdView;

    iget-object v1, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    const-string v2, "http://my.mobfox.com/request.php"

    invoke-virtual {p0}, Lio/casper/android/l/a;->c()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 387
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->setAdspaceHeight(I)V

    .line 388
    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/banner/AdView;->setAdspaceStrict(Z)V

    .line 390
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 391
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 392
    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    new-instance v1, Lio/casper/android/l/a$14;

    invoke-direct {v1, p0, p3}, Lio/casper/android/l/a$14;-><init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    .line 424
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 432
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lio/casper/android/l/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v1

    .line 433
    iget-object v0, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lio/casper/android/l/a$15;

    invoke-direct {v2, p0, p3}, Lio/casper/android/l/a$15;-><init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    .line 448
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 456
    :pswitch_3
    new-instance v1, Lcom/mopub/mobileads/MoPubView;

    iget-object v0, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-virtual {p0}, Lio/casper/android/l/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 458
    new-instance v0, Lio/casper/android/l/a$16;

    invoke-direct {v0, p0, p3}, Lio/casper/android/l/a$16;-><init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;)V

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 487
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 490
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 491
    instance-of v2, v0, Lio/casper/android/activity/a/a;

    if-eqz v2, :cond_0

    .line 493
    check-cast v0, Lio/casper/android/activity/a/a;

    .line 494
    new-instance v2, Lio/casper/android/l/a$17;

    invoke-direct {v2, p0, v1}, Lio/casper/android/l/a$17;-><init>(Lio/casper/android/l/a;Lcom/mopub/mobileads/MoPubView;)V

    invoke-virtual {v0, v2}, Lio/casper/android/activity/a/a;->a(Lio/casper/android/activity/a/a$a;)V

    goto/16 :goto_0

    .line 350
    :sswitch_data_0
    .sparse-switch
        -0x78228631 -> :sswitch_1
        -0x701e0483 -> :sswitch_2
        0x3b40bdd -> :sswitch_0
        0x46231fb -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lio/casper/android/c/b/b/a/a/a/a;)V
    .locals 9

    .prologue
    .line 861
    if-eqz p1, :cond_11

    .line 863
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a/a;->b()Lio/casper/android/c/b/b/a/a/a/a/a;

    move-result-object v0

    .line 864
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a/a;->a()Lio/casper/android/c/b/b/a/a/a/b/c;

    move-result-object v1

    .line 865
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a/a;->c()Ljava/util/List;

    move-result-object v2

    .line 867
    if-eqz v0, :cond_5

    .line 869
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/a/a;->a()I

    move-result v3

    .line 870
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v4

    .line 871
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 872
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/a/a;->d()Ljava/util/List;

    move-result-object v6

    .line 873
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/a/a;->e()Ljava/util/List;

    move-result-object v7

    .line 874
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/a/a;->f()Lio/casper/android/c/b/b/a/a/a/a/b;

    move-result-object v0

    .line 876
    if-lez v3, :cond_0

    .line 877
    invoke-virtual {p0, v3}, Lio/casper/android/l/a;->a(I)V

    .line 880
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 881
    invoke-virtual {p0, v4}, Lio/casper/android/l/a;->l(Ljava/lang/String;)V

    .line 884
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 885
    invoke-virtual {p0, v5}, Lio/casper/android/l/a;->m(Ljava/lang/String;)V

    .line 888
    :cond_2
    if-eqz v6, :cond_3

    .line 889
    invoke-virtual {p0, v6}, Lio/casper/android/l/a;->a(Ljava/util/List;)V

    .line 892
    :cond_3
    if-eqz v7, :cond_4

    .line 893
    invoke-virtual {p0, v7}, Lio/casper/android/l/a;->b(Ljava/util/List;)V

    .line 896
    :cond_4
    if-eqz v0, :cond_5

    .line 898
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/a/b;->a()Z

    move-result v3

    .line 899
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/a/b;->b()Z

    move-result v0

    .line 900
    const-string v4, "pref_ads_startapp_display_native_snaps"

    invoke-virtual {p0, v4, v3}, Lio/casper/android/l/a;->c(Ljava/lang/String;Z)V

    .line 901
    const-string v3, "pref_ads_startapp_display_native_stories"

    invoke-virtual {p0, v3, v0}, Lio/casper/android/l/a;->c(Ljava/lang/String;Z)V

    .line 907
    :cond_5
    if-eqz v1, :cond_10

    .line 909
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/a/b/c;->a()Lio/casper/android/c/b/b/a/a/a/b/a;

    move-result-object v0

    .line 910
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/a/b/c;->b()Lio/casper/android/c/b/b/a/a/a/b/e;

    move-result-object v3

    .line 911
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/a/b/c;->c()Lio/casper/android/c/b/b/a/a/a/b/f;

    move-result-object v4

    .line 912
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/a/b/c;->d()Lio/casper/android/c/b/b/a/a/a/b/g;

    move-result-object v5

    .line 913
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/a/b/c;->e()Lio/casper/android/c/b/b/a/a/a/b/b;

    move-result-object v6

    .line 914
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/a/b/c;->f()Lio/casper/android/c/b/b/a/a/a/b/d;

    move-result-object v1

    .line 916
    if-eqz v0, :cond_7

    .line 918
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/b/a;->a()Ljava/lang/String;

    move-result-object v7

    .line 919
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 922
    invoke-virtual {p0, v7}, Lio/casper/android/l/a;->a(Ljava/lang/String;)V

    .line 925
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 926
    invoke-virtual {p0, v0}, Lio/casper/android/l/a;->b(Ljava/lang/String;)V

    .line 931
    :cond_7
    if-eqz v3, :cond_9

    .line 933
    invoke-virtual {v3}, Lio/casper/android/c/b/b/a/a/a/b/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 934
    invoke-virtual {v3}, Lio/casper/android/c/b/b/a/a/a/b/e;->b()Ljava/lang/String;

    move-result-object v3

    .line 936
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 937
    invoke-virtual {p0, v0}, Lio/casper/android/l/a;->c(Ljava/lang/String;)V

    .line 940
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 941
    invoke-virtual {p0, v3}, Lio/casper/android/l/a;->d(Ljava/lang/String;)V

    .line 946
    :cond_9
    if-eqz v4, :cond_a

    .line 948
    invoke-virtual {v4}, Lio/casper/android/c/b/b/a/a/a/b/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 951
    invoke-virtual {p0, v0}, Lio/casper/android/l/a;->e(Ljava/lang/String;)V

    .line 956
    :cond_a
    if-eqz v5, :cond_c

    .line 958
    invoke-virtual {v5}, Lio/casper/android/c/b/b/a/a/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-virtual {v5}, Lio/casper/android/c/b/b/a/a/a/b/g;->b()Ljava/lang/String;

    move-result-object v3

    .line 961
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 962
    invoke-virtual {p0, v0}, Lio/casper/android/l/a;->f(Ljava/lang/String;)V

    .line 965
    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 966
    invoke-virtual {p0, v3}, Lio/casper/android/l/a;->g(Ljava/lang/String;)V

    .line 971
    :cond_c
    if-eqz v6, :cond_e

    .line 973
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 974
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 976
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 977
    invoke-virtual {p0, v0}, Lio/casper/android/l/a;->h(Ljava/lang/String;)V

    .line 980
    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 981
    invoke-virtual {p0, v3}, Lio/casper/android/l/a;->i(Ljava/lang/String;)V

    .line 986
    :cond_e
    if-eqz v1, :cond_10

    .line 988
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/a/b/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/a/b/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 991
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 992
    invoke-virtual {p0, v0}, Lio/casper/android/l/a;->j(Ljava/lang/String;)V

    .line 995
    :cond_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 996
    invoke-virtual {p0, v1}, Lio/casper/android/l/a;->k(Ljava/lang/String;)V

    .line 1003
    :cond_10
    if-eqz v2, :cond_11

    .line 1004
    invoke-virtual {p0, v2}, Lio/casper/android/l/a;->c(Ljava/util/List;)V

    .line 1009
    :cond_11
    return-void
.end method

.method public a(Lio/casper/android/l/a$a;)V
    .locals 2

    .prologue
    .line 523
    invoke-virtual {p0}, Lio/casper/android/l/a;->o()I

    move-result v0

    .line 524
    invoke-virtual {p0}, Lio/casper/android/l/a;->n()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/casper/android/l/a;->b(I)V

    .line 525
    invoke-virtual {p0, p1}, Lio/casper/android/l/a;->b(Lio/casper/android/l/a$a;)V

    .line 526
    invoke-virtual {p0, v0}, Lio/casper/android/l/a;->b(I)V

    .line 527
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    const-string v0, "pref_ads_admob_banner"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public a(Ljava/lang/String;Lio/casper/android/l/a$a;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 586
    const-string v0, "AdManager"

    const-string v3, "initializeAdInterstitial network=%s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 818
    :cond_1
    :goto_1
    return-void

    .line 588
    :sswitch_0
    const-string v2, "ADMOB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "MOBFOX"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v2, "REVMOB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "AVOCARROT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "MOPUB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 592
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 593
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v2, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 594
    invoke-virtual {p0}, Lio/casper/android/l/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 595
    new-instance v2, Lio/casper/android/l/a$3;

    invoke-direct {v2, p0, p2, v1}, Lio/casper/android/l/a$3;-><init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;Lcom/google/android/gms/ads/InterstitialAd;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 625
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_1

    .line 633
    :pswitch_1
    new-instance v0, Lcom/adsdk/sdk/AdManager;

    iget-object v2, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    const-string v3, "http://my.mobfox.com/request.php"

    invoke-virtual {p0}, Lio/casper/android/l/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/adsdk/sdk/AdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 634
    new-instance v1, Lio/casper/android/l/a$4;

    invoke-direct {v1, p0, p2, v0}, Lio/casper/android/l/a$4;-><init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdManager;->setListener(Lcom/adsdk/sdk/AdListener;)V

    .line 669
    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->requestAd()V

    goto :goto_1

    .line 677
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lio/casper/android/l/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v1

    .line 678
    iget-object v0, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lio/casper/android/l/a$5;

    invoke-direct {v2, p0, p2}, Lio/casper/android/l/a$5;-><init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/revmob/RevMob;->createFullscreen(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/a;->mRevmobFullscreen:Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    goto/16 :goto_1

    .line 715
    :pswitch_3
    new-instance v2, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

    iget-object v0, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lio/casper/android/l/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/casper/android/l/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v2, v1}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->setSandbox(Z)V

    .line 717
    new-instance v0, Lio/casper/android/l/a$6;

    invoke-direct {v0, p0, p2}, Lio/casper/android/l/a$6;-><init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;)V

    invoke-virtual {v2, v0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->setListener(Lcom/avocarrot/androidsdk/BaseListener;)V

    .line 745
    :try_start_0
    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->loadAndShowAd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 746
    :catch_0
    move-exception v0

    .line 748
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 749
    if-eqz p2, :cond_1

    .line 750
    invoke-interface {p2}, Lio/casper/android/l/a$a;->c()V

    goto/16 :goto_1

    .line 761
    :pswitch_4
    new-instance v1, Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v0, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lio/casper/android/l/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 762
    new-instance v0, Lio/casper/android/l/a$7;

    invoke-direct {v0, p0, v1, p2}, Lio/casper/android/l/a$7;-><init>(Lio/casper/android/l/a;Lcom/mopub/mobileads/MoPubInterstitial;Lio/casper/android/l/a$a;)V

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 796
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 798
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 799
    instance-of v2, v0, Lio/casper/android/activity/a/a;

    if-eqz v2, :cond_1

    .line 801
    check-cast v0, Lio/casper/android/activity/a/a;

    .line 802
    new-instance v2, Lio/casper/android/l/a$8;

    invoke-direct {v2, p0, v1}, Lio/casper/android/l/a$8;-><init>(Lio/casper/android/l/a;Lcom/mopub/mobileads/MoPubInterstitial;)V

    invoke-virtual {v0, v2}, Lio/casper/android/activity/a/a;->a(Lio/casper/android/activity/a/a$a;)V

    goto/16 :goto_1

    .line 588
    :sswitch_data_0
    .sparse-switch
        -0x78228631 -> :sswitch_1
        -0x701e0483 -> :sswitch_2
        0x3b40bdd -> :sswitch_0
        0x46231fb -> :sswitch_4
        0x5420b8bd -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    const-string v0, "pref_ads_network_order_banner"

    iget-object v1, p0, Lio/casper/android/l/a;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {v1, p1}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "AdManager"

    const-string v2, "Serializing Network Order for Banners failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    const-string v0, "pref_ads_admob_interstitial"

    const-string v1, "ca-app-pub-1709125857628693/1458543968"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 150
    const-string v0, "pref_ads_counter_interstitial"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public b(Landroid/widget/LinearLayout;)V
    .locals 7

    .prologue
    .line 828
    invoke-virtual {p0}, Lio/casper/android/l/a;->r()Ljava/util/List;

    move-result-object v0

    .line 830
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 832
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 834
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/b/b/a/a/a/b;

    .line 835
    if-eqz v0, :cond_0

    .line 837
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 839
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42480000    # 50.0f

    iget-object v6, p0, Lio/casper/android/l/a;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lio/casper/android/util/l;->a(FLandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 840
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 844
    new-instance v1, Lio/casper/android/l/a$9;

    invoke-direct {v1, p0, v0}, Lio/casper/android/l/a$9;-><init>(Lio/casper/android/l/a;Lio/casper/android/c/b/b/a/a/a/b;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 857
    :cond_0
    return-void
.end method

.method public b(Lio/casper/android/l/a$a;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 531
    iget-object v0, p0, Lio/casper/android/l/a;->mAddonManager:Lio/casper/android/l/b;

    invoke-virtual {v0}, Lio/casper/android/l/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    if-eqz p1, :cond_0

    .line 533
    invoke-interface {p1}, Lio/casper/android/l/a$a;->a()V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p0}, Lio/casper/android/l/a;->o()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 539
    const-string v1, "AdManager"

    const-string v2, "Interstitial Frequency %s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lio/casper/android/l/a;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    invoke-virtual {p0}, Lio/casper/android/l/a;->n()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 541
    invoke-virtual {p0, v0}, Lio/casper/android/l/a;->b(I)V

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p0, v5}, Lio/casper/android/l/a;->b(I)V

    .line 547
    invoke-virtual {p0}, Lio/casper/android/l/a;->q()Ljava/util/List;

    move-result-object v0

    .line 549
    const-string v1, "AdManager"

    const-string v2, "initializeAdInterstitial networkOrder=%s"

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 552
    new-instance v1, Lio/casper/android/l/a$2;

    invoke-direct {v1, p0, p1, v0}, Lio/casper/android/l/a$2;-><init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;Ljava/util/Iterator;)V

    iput-object v1, p0, Lio/casper/android/l/a;->mInternalAdListenerInterstitial:Lio/casper/android/l/a$a;

    .line 577
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/l/a;->mInternalAdListenerInterstitial:Lio/casper/android/l/a$a;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->a(Ljava/lang/String;Lio/casper/android/l/a$a;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    const-string v0, "pref_ads_admob_interstitial"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    const-string v0, "pref_ads_network_order_interstitial"

    iget-object v1, p0, Lio/casper/android/l/a;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {v1, p1}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "AdManager"

    const-string v2, "Serializing Network Order for Interstitials failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    const-string v0, "pref_ads_mobfox_id"

    const-string v1, "1f8c2750a20329502a21cdd9e6cfc5cc"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    const-string v0, "pref_ads_mobfox_id"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    const-string v0, "pref_ads_fallback"

    iget-object v1, p0, Lio/casper/android/l/a;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {v1, p1}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "AdManager"

    const-string v2, "Serializing Fallback Ads failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    const-string v0, "pref_ads_mobfox_id_interstitial"

    const-string v1, "bd58467866beceb1c236d2a87c8f22f2"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "pref_ads_mobfox_id_interstitial"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    const-string v0, "pref_ads_revmob_media_id"

    const-string v1, "556c906c79c9c3b328b996bc"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    const-string v0, "pref_ads_revmob_media_id"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    const-string v0, "pref_ads_startapp_account_id"

    const-string v1, "105613458"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    const-string v0, "pref_ads_startapp_account_id"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    const-string v0, "pref_ads_startapp_app_id"

    const-string v1, "205184758"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    const-string v0, "pref_ads_startapp_app_id"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    const-string v0, "pref_ads_avocarrot_api_key"

    const-string v1, "982c771807530b83bdd1901d4194500c2c7fb2f5"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    const-string v0, "pref_ads_avocarrot_api_key"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    const-string v0, "pref_ads_avocarrot_placement_key"

    const-string v1, "a92349d20eaf701b5aa6f1232435be9ba613cb58"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    const-string v0, "pref_ads_avocarrot_placement_key"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    const-string v0, "pref_ads_mopub_banner"

    const-string v1, "f08878a4d82d40359f7e23161a5d2709"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    const-string v0, "pref_ads_mopub_banner"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    const-string v0, "pref_ads_mopub_interstitial"

    const-string v1, "e65aadd243194bfcadd3e82a335b9b6d"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    const-string v0, "pref_ads_mopub_interstitial"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    const-string v0, "pref_ads_network"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 230
    const-string v0, "pref_ads_startapp_display_native_snaps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    const-string v0, "pref_ads_network_interstitial"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 234
    const-string v0, "pref_ads_startapp_display_native_stories"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    .prologue
    .line 238
    const-string v0, "pref_ads_frequency_interstitial"

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2

    .prologue
    .line 242
    const-string v0, "pref_ads_counter_interstitial"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public p()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    const-string v1, "MOBFOX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v1, "REVMOB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v1, "MOPUB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const-string v1, "pref_ads_network_order_banner"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lio/casper/android/l/a;->mJsonSerializer:Lio/casper/android/util/e;

    new-instance v2, Lio/casper/android/l/a$1;

    invoke-direct {v2, p0}, Lio/casper/android/l/a$1;-><init>(Lio/casper/android/l/a;)V

    invoke-virtual {v2}, Lio/casper/android/l/a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 264
    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    :cond_0
    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    const-string v1, "MOBFOX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v1, "REVMOB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v1, "AVOCARROT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v1, "MOPUB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v1, "pref_ads_network_order_interstitial"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lio/casper/android/l/a;->mJsonSerializer:Lio/casper/android/util/e;

    new-instance v2, Lio/casper/android/l/a$10;

    invoke-direct {v2, p0}, Lio/casper/android/l/a$10;-><init>(Lio/casper/android/l/a;)V

    invoke-virtual {v2}, Lio/casper/android/l/a$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 284
    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    :cond_0
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    const-string v0, "pref_ads_fallback"

    const-string v1, "[]"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lio/casper/android/l/a;->mJsonSerializer:Lio/casper/android/util/e;

    new-instance v2, Lio/casper/android/l/a$11;

    invoke-direct {v2, p0}, Lio/casper/android/l/a$11;-><init>(Lio/casper/android/l/a;)V

    invoke-virtual {v2}, Lio/casper/android/l/a$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 297
    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    :cond_0
    return-object v0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/casper/android/l/a;->b(Lio/casper/android/l/a$a;)V

    .line 520
    return-void
.end method
