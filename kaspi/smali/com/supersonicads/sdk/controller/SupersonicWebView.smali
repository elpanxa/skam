.class public Lcom/supersonicads/sdk/controller/SupersonicWebView;
.super Landroid/webkit/WebView;
.source "SupersonicWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/controller/SupersonicWebView$7;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$State;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$ViewClient;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;
    }
.end annotation


# static fields
.field public static APP_IDS:Ljava/lang/String;

.field public static DISPLAY_WEB_VIEW_INTENT:I

.field public static EXTERNAL_URL:Ljava/lang/String;

.field public static IS_INSTALLED:Ljava/lang/String;

.field public static IS_STORE:Ljava/lang/String;

.field public static IS_STORE_CLOSE:Ljava/lang/String;

.field private static JSON_KEY_FAIL:Ljava/lang/String;

.field private static JSON_KEY_SUCCESS:Ljava/lang/String;

.field public static OPEN_URL_INTENT:I

.field public static REQUEST_ID:Ljava/lang/String;

.field public static RESULT:Ljava/lang/String;

.field public static SECONDARY_WEB_VIEW:Ljava/lang/String;

.field public static WEBVIEW_TYPE:Ljava/lang/String;

.field public static mDebugMode:I


# instance fields
.field private final GENERIC_MESSAGE:Ljava/lang/String;

.field private PUB_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

.field private isKitkatAndAbove:Ljava/lang/Boolean;

.field private isRemoveCloseEventHandler:Z

.field private mBCAppKey:Ljava/lang/String;

.field private mBCUserId:Ljava/lang/String;

.field private mCacheDirectory:Ljava/lang/String;

.field private mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

.field private mCloseEventTimer:Landroid/os/CountDownTimer;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mControllerKeyPressed:Ljava/lang/String;

.field private mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalControllerTimeFinish:Z

.field private mGlobalControllerTimer:Landroid/os/CountDownTimer;

.field private mHiddenForceCloseHeight:I

.field private mHiddenForceCloseLocation:Ljava/lang/String;

.field private mHiddenForceCloseWidth:I

.field private mISAppKey:Ljava/lang/String;

.field private mISExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mISUserId:Ljava/lang/String;

.field private mISmiss:Z

.field private mIsInterstitialAvailable:Ljava/lang/Boolean;

.field private mLayout:Landroid/widget/FrameLayout;

.field private mLoadControllerTimer:Landroid/os/CountDownTimer;

.field private mOWAppKey:Ljava/lang/String;

.field private mOWCreditsAppKey:Ljava/lang/String;

.field private mOWCreditsMiss:Z

.field private mOWCreditsUserId:Ljava/lang/String;

.field private mOWUserId:Ljava/lang/String;

.field private mOWmiss:Z

.field private mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

.field private mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

.field private mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

.field private mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

.field private mOrientationState:Ljava/lang/String;

.field private mRVmiss:Z

.field private mRequestParameters:Ljava/lang/String;

.field private mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

.field private mSavedStateLocker:Ljava/lang/Object;

.field private mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

.field private mUri:Landroid/net/Uri;

.field private mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

.field private mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    sput v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDebugMode:I

    .line 115
    const-string v0, "is_store"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_STORE:Ljava/lang/String;

    .line 116
    const-string v0, "is_store_close"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_STORE_CLOSE:Ljava/lang/String;

    .line 117
    const-string v0, "webview_type"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->WEBVIEW_TYPE:Ljava/lang/String;

    .line 118
    const-string v0, "external_url"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 119
    const-string v0, "secondary_web_view"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    .line 120
    sput v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->DISPLAY_WEB_VIEW_INTENT:I

    .line 121
    const/4 v0, 0x1

    sput v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->OPEN_URL_INTENT:I

    .line 122
    const-string v0, "appIds"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->APP_IDS:Ljava/lang/String;

    .line 123
    const-string v0, "requestId"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->REQUEST_ID:Ljava/lang/String;

    .line 124
    const-string v0, "isInstalled"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_INSTALLED:Ljava/lang/String;

    .line 125
    const-string v0, "result"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->RESULT:Ljava/lang/String;

    .line 2820
    const-string v0, "success"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    .line 2821
    const-string v0, "fail"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 183
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 88
    const-class v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    .line 89
    const-string v0, "Supersonic"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;

    .line 93
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->GENERIC_MESSAGE:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    .line 141
    const-string v0, "interrupt"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 148
    iput v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I

    .line 149
    iput v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I

    .line 150
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->None:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 170
    iput-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedStateLocker:Ljava/lang/Object;

    .line 3385
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/supersonicads/sdk/data/AdUnitsState;

    invoke-direct {v0}, Lcom/supersonicads/sdk/data/AdUnitsState;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 188
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v1, "C\'tor"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initLayout(Landroid/content/Context;)V

    .line 191
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->getInstance(Ljava/lang/String;)Lcom/supersonicads/sdk/precache/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    .line 194
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/precache/DownloadManager;->setOnPreCacheCompletion(Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 196
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    .line 198
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ViewClient;

    invoke-direct {v0, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ViewClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 199
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 201
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebViewSettings()V

    .line 203
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)V

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 207
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;

    invoke-direct {v0, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    return-void
.end method

.method static synthetic access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I

    return p1
.end method

.method static synthetic access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getApplicationParams(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/precache/DownloadManager;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->closeWebView()V

    return-void
.end method

.method static synthetic access$4900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I

    return p1
.end method

.method static synthetic access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebviewBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-direct/range {p0 .. p10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z

    return v0
.end method

.method static synthetic access$702(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z

    return p1
.end method

.method static synthetic access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$902(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimeFinish:Z

    return p1
.end method

.method private closeWebView()V
    .locals 1

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    invoke-interface {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;->onHide()V

    .line 2815
    :cond_0
    return-void
.end method

.method private createInitProductJSMethod(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2491
    .line 2493
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_2

    .line 2494
    const-string v0, "initBrandConnect"

    const-string v1, "onInitBrandConnectSuccess"

    const-string v2, "onInitBrandConnectFail"

    invoke-direct {p0, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2520
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 2521
    invoke-direct {p0, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2522
    :cond_1
    return-void

    .line 2496
    :cond_2
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_4

    .line 2499
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2500
    const-string v1, "applicationKey"

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    const-string v1, "applicationUserId"

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 2503
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2506
    :cond_3
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2507
    const-string v1, "initInterstitial"

    const-string v2, "onInitInterstitialSuccess"

    const-string v3, "onInitInterstitialFail"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2509
    :cond_4
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_5

    .line 2510
    const-string v0, "showOfferWall"

    const-string v1, "onShowOfferWallSuccess"

    const-string v2, "onShowOfferWallFail"

    invoke-direct {p0, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2512
    :cond_5
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 2513
    const-string v1, "productType"

    const-string v2, "OfferWall"

    const-string v3, "applicationKey"

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    const-string v5, "applicationUserId"

    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2517
    const-string v1, "getUserCredits"

    const-string v2, "null"

    const-string v3, "onGetUserCreditsFail"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private evaluateJavascriptKitKat(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2742
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2743
    return-void
.end method

.method private extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2876
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2877
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2879
    return-object v0
.end method

.method private extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2868
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2869
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2871
    return-object v0
.end method

.method private flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2525
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2526
    if-eqz p1, :cond_0

    .line 2527
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2528
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2531
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2532
    :catch_0
    move-exception v0

    .line 2533
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flatMapToJsonAsStringfailed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2539
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateJSToInject(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3586
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3593
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3601
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3610
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationParams(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3095
    .line 3097
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3099
    const-string v1, ""

    .line 3100
    const-string v0, ""

    .line 3104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3106
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3107
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    .line 3108
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    .line 3120
    :cond_0
    :goto_0
    :try_start_0
    const-string v2, "productType"

    invoke-virtual {v5, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    .line 3136
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3138
    :try_start_1
    const-string v6, "applicationUserId"

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3151
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3153
    :try_start_2
    const-string v0, "applicationKey"

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3165
    :goto_3
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3167
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "sdkWebViewCache"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebviewCache(Ljava/lang/String;)V

    .line 3174
    :cond_1
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 3175
    :catch_0
    move-exception v0

    .line 3176
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3177
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v7, "https://www.supersonicads.com/mobile/sdk5/log?method=extraParametersToJson"

    aput-object v7, v1, v3

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 3110
    :cond_2
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3111
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    .line 3112
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    goto/16 :goto_0

    .line 3114
    :cond_3
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3115
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    .line 3116
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    goto/16 :goto_0

    .line 3126
    :catch_1
    move-exception v2

    .line 3127
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 3128
    new-instance v2, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "https://www.supersonicads.com/mobile/sdk5/log?method=noProductType"

    aput-object v7, v6, v3

    invoke-virtual {v2, v6}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 3129
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 3132
    goto/16 :goto_1

    .line 3142
    :catch_2
    move-exception v0

    .line 3143
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3144
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppUserId"

    aput-object v7, v6, v3

    invoke-virtual {v0, v6}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :cond_5
    move v2, v4

    .line 3147
    goto/16 :goto_2

    .line 3156
    :catch_3
    move-exception v0

    .line 3157
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3158
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v6, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppKey"

    aput-object v6, v1, v3

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    :cond_6
    move v2, v4

    .line 3161
    goto/16 :goto_3

    .line 3182
    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3183
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 3184
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    .line 3186
    return-object v0
.end method

.method private getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3191
    .line 3193
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3196
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3197
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3198
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3199
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3200
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    .line 3203
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3205
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move v3, v1

    .line 3207
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 3208
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 3210
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3211
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 3214
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3215
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3216
    sget-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_INSTALLED:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3217
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v0, v2

    .line 3222
    :goto_1
    if-nez v0, :cond_1

    .line 3223
    sget-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_INSTALLED:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3224
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3207
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3229
    :cond_2
    sget-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->RESULT:Ljava/lang/String;

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3230
    sget-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3244
    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3245
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3246
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    .line 3248
    return-object v3

    .line 3234
    :cond_3
    :try_start_1
    const-string v0, "error"

    const-string v3, "requestId is null or empty"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v0, v2

    goto :goto_2

    .line 3238
    :cond_4
    const-string v0, "error"

    const-string v3, "appIds is null or empty"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    goto :goto_2

    .line 3240
    :catch_0
    move-exception v0

    move v0, v2

    .line 3241
    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private getBaseContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2747
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/MutableContextWrapper;

    .line 2748
    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2938
    .line 2940
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;

    move-result-object v0

    .line 2942
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2947
    :try_start_0
    const-string v1, "appOrientation"

    const-string v5, "none"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2950
    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOem()Ljava/lang/String;

    move-result-object v1

    .line 2951
    if-eqz v1, :cond_0

    .line 2952
    const-string v5, "deviceOEM"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2956
    :cond_0
    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    .line 2957
    if-eqz v1, :cond_7

    .line 2958
    const-string v5, "deviceModel"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 2964
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 2965
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v5

    .line 2966
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 2968
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2970
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v8, "add AID and LAT"

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    const-string v7, "isLimitAdTrackingEnabled"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2976
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceIds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2982
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2986
    :cond_1
    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v5

    .line 2987
    if-eqz v5, :cond_8

    .line 2988
    const-string v6, "deviceOs"

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2994
    :goto_1
    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOsVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2995
    if-eqz v5, :cond_9

    .line 2996
    const-string v6, "deviceOSVersion"

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3002
    :goto_2
    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v5

    .line 3003
    if-eqz v5, :cond_2

    .line 3004
    const-string v6, "SDKVersion"

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3008
    :cond_2
    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 3009
    const-string v5, "mobileCarrier"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3013
    :cond_3
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3014
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 3015
    const-string v5, "connectionType"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3021
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3022
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3023
    const-string v5, "deviceLanguage"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3027
    :cond_4
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3028
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->getAvailableSpaceInMB(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 3029
    const-string v0, "diskFreeSize"

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3037
    :goto_4
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceWidth()I

    move-result v0

    .line 3038
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3039
    if-eqz v0, :cond_c

    .line 3041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3042
    const-string v6, "deviceScreenSize"

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "width"

    invoke-static {v7}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3054
    :goto_5
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceHeight()I

    move-result v0

    .line 3055
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3056
    if-eqz v0, :cond_d

    .line 3058
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3059
    const-string v6, "deviceScreenSize"

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "height"

    invoke-static {v7}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3064
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 3070
    :goto_6
    :try_start_2
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3071
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3072
    const-string v5, "bundleId"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3075
    :cond_5
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceScale()F

    move-result v1

    .line 3076
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 3077
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3078
    const-string v5, "deviceScreenScale"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3086
    :cond_6
    :goto_7
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3087
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 3088
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    .line 3090
    return-object v1

    :cond_7
    move v1, v3

    .line 2960
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 2990
    goto/16 :goto_1

    :cond_9
    move v1, v3

    .line 2998
    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 3017
    goto/16 :goto_3

    :cond_b
    move v1, v3

    .line 3033
    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 3050
    goto/16 :goto_5

    :cond_d
    move v0, v3

    .line 3067
    goto :goto_6

    .line 3081
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 3082
    :goto_8
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3083
    new-instance v5, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v5}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v6, v3, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-virtual {v5, v6}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7

    .line 3081
    :catch_1
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_8
.end method

.method private getRequestParameters()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2753
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;

    move-result-object v0

    .line 2755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2757
    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v2

    .line 2758
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2759
    const-string v3, "SDKVersion"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2765
    :cond_0
    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v0

    .line 2766
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2767
    const-string v2, "deviceOs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    :cond_1
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v0

    .line 2773
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2775
    if-eqz v2, :cond_4

    .line 2777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2778
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2779
    invoke-virtual {v2}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 2780
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 2781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2784
    :cond_2
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "protocol"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "domain"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2794
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getControllerConfig()Ljava/lang/String;

    move-result-object v0

    .line 2795
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2796
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "controllerConfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    :cond_3
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "debug"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2808
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 293
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 298
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLayout:Landroid/widget/FrameLayout;

    .line 302
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 303
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 304
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 308
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 309
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 310
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 314
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 316
    return-void
.end method

.method private initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/data/SSAEnums$ProductType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2352
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2353
    :cond_0
    const-string v0, "User id or Application key are missing"

    invoke-direct {p0, v0, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2383
    :cond_1
    :goto_0
    return-void

    .line 2357
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_3

    .line 2360
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setApplicationKey(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2361
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setUserID(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2362
    invoke-direct {p0, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->createInitProductJSMethod(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    goto :goto_0

    .line 2366
    :cond_3
    invoke-direct {p0, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setMissProduct(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2368
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_4

    .line 2371
    const-string v0, "Initiating Controller"

    invoke-static {p5, v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    goto :goto_0

    .line 2378
    :cond_4
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimeFinish:Z

    if-eqz v0, :cond_1

    .line 2379
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadController()V

    goto :goto_0
.end method

.method private injectJavascript(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2667
    const-string v0, "empty"

    .line 2668
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v1

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 2670
    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    .line 2683
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2684
    const-string v2, "try{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}catch(e){"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2693
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2695
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 2696
    check-cast v0, Landroid/app/Activity;

    .line 2697
    new-instance v3, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2738
    :goto_1
    return-void

    .line 2672
    :cond_1
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v1

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v1

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 2675
    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    goto :goto_0

    .line 2736
    :cond_2
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://www.supersonicads.com/mobile/sdk5/log?method=contextIsNotActivity"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private mapToJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2919
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2921
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2923
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2924
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2926
    :try_start_0
    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2927
    :catch_0
    move-exception v0

    .line 2928
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2933
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .prologue
    .line 2885
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2889
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2890
    invoke-static {p2}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2893
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2894
    invoke-static {p4}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2897
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2898
    invoke-static {p6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2901
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2902
    invoke-static/range {p8 .. p8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2905
    :cond_3
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2906
    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2914
    :cond_4
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2909
    :catch_0
    move-exception v2

    .line 2910
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2911
    new-instance v4, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v4}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v8, 0x0

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private resetMissProduct()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2556
    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z

    .line 2557
    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    .line 2558
    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    .line 2559
    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    .line 2560
    return-void
.end method

.method private responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2825
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2826
    sget-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2827
    sget-object v2, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2829
    const/4 v1, 0x0

    .line 2832
    if-eqz p2, :cond_3

    .line 2833
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2843
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2845
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2847
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2848
    const-string v2, "errMsg"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 2853
    :cond_0
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2855
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2856
    const-string v2, "errCode"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    .line 2861
    :cond_1
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2862
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2864
    :cond_2
    return-void

    .line 2837
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v2

    .line 2838
    goto :goto_0

    .line 2857
    :catch_0
    move-exception v1

    goto :goto_2

    .line 2849
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 3

    .prologue
    .line 3539
    const-string v0, ""

    .line 3541
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$7;->$SwitchMap$com$supersonicads$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3565
    :goto_0
    const-string v1, "Initiating Controller"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3568
    return-void

    .line 3544
    :pswitch_0
    const-string v0, "Init BC"

    goto :goto_0

    .line 3549
    :pswitch_1
    const-string v0, "Init IS"

    goto :goto_0

    .line 3554
    :pswitch_2
    const-string v0, "Show OW"

    goto :goto_0

    .line 3559
    :pswitch_3
    const-string v0, "Show OW Credits"

    goto :goto_0

    .line 3541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDisplayZoomControls(Landroid/webkit/WebSettings;)V
    .locals 2

    .prologue
    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 359
    :cond_0
    return-void
.end method

.method public static setEXTERNAL_URL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2225
    sput-object p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 2226
    return-void
.end method

.method private setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 373
    :cond_0
    return-void
.end method

.method private setMissProduct(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2543
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 2544
    iput-boolean v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z

    .line 2552
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMissProduct("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    return-void

    .line 2545
    :cond_1
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_2

    .line 2546
    iput-boolean v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    goto :goto_0

    .line 2547
    :cond_2
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_3

    .line 2548
    iput-boolean v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    goto :goto_0

    .line 2549
    :cond_3
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 2550
    iput-boolean v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    goto :goto_0
.end method

.method private setWebDebuggingEnabled()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 378
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 380
    :cond_0
    return-void
.end method

.method private setWebViewSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 319
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 322
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 323
    invoke-virtual {p0, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setVerticalScrollBarEnabled(Z)V

    .line 324
    invoke-virtual {p0, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 330
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 332
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 334
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 335
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 338
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 339
    const-string v1, "/data/data/org.itri.html5webview/databases/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 346
    :try_start_0
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setDisplayZoomControls(Landroid/webkit/WebSettings;)V

    .line 347
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWebSettings - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=setWebViewSettings"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setWebviewBackground(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2248
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2249
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2251
    const/4 v0, 0x0

    .line 2253
    const-string v2, "transparent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2254
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2257
    :cond_0
    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setBackgroundColor(I)V

    .line 2258
    return-void
.end method

.method private setWebviewCache(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3504
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3506
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 3511
    :goto_0
    return-void

    .line 3509
    :cond_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0
.end method

.method private shouldNotifyDeveloper(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    .line 455
    if-nez p1, :cond_1

    .line 456
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v2, "Trying to trigger a listener - no product was found"

    invoke-static {v0, v2}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return v1

    .line 460
    :cond_1
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 461
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    .line 468
    :cond_2
    :goto_2
    if-nez v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 461
    goto :goto_1

    .line 462
    :cond_4
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 463
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    if-eqz v2, :cond_5

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    .line 464
    :cond_6
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    :cond_7
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    if-eqz v2, :cond_8

    :goto_4
    move v1, v0

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_4
.end method

.method private toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3306
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p2}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3307
    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3309
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3310
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3311
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 3313
    check-cast v0, Landroid/app/Activity;

    .line 3314
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;

    invoke-direct {v2, p0, p1, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3323
    :cond_0
    return-void
.end method

.method private triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 2

    .prologue
    .line 2564
    invoke-virtual {p2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2565
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2566
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2568
    check-cast v0, Landroid/app/Activity;

    .line 2570
    new-instance v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2604
    :cond_0
    return-void
.end method


# virtual methods
.method public assetCached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 2612
    const-string v1, "file"

    const-string v3, "path"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2613
    const-string v1, "assetCached"

    invoke-direct {p0, v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2614
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2615
    return-void
.end method

.method public assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2618
    const-string v1, "file"

    const-string v3, "path"

    const-string v5, "errMsg"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2619
    const-string v1, "assetCachedFailed"

    invoke-direct {p0, v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2620
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2621
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 3572
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 3574
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    if-eqz v0, :cond_0

    .line 3575
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->release()V

    .line 3577
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 3578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 3581
    :cond_1
    return-void
.end method

.method public deviceStatusChanged(ZZ)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 3363
    const-string v2, "none"

    .line 3364
    if-eqz p1, :cond_1

    .line 3365
    const-string v2, "wifi"

    .line 3370
    :cond_0
    :goto_0
    const-string v1, "connectionType"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3371
    const-string v1, "deviceStatusChanged"

    invoke-direct {p0, v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3372
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3373
    return-void

    .line 3366
    :cond_1
    if-eqz p2, :cond_0

    .line 3367
    const-string v2, "3g"

    goto :goto_0
.end method

.method public downloadController()V
    .locals 8

    .prologue
    .line 385
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "mobileController.html"

    invoke-static {v0, v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 386
    const-string v0, ""

    .line 388
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v6

    .line 389
    new-instance v7, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-direct {v7, v6, v0}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;

    const-wide/32 v2, 0x9c40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;JJ)V

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    .line 409
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->isMobileControllerThreadLive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Mobile Controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0, v7}, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadMobileControllerFile(Lcom/supersonicads/sdk/data/SSAFile;)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v1, "Download Mobile Controller: already alive"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public engageEnd(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 3376
    const-string v0, "forceClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3377
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->closeWebView()V

    .line 3380
    :cond_0
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3381
    const-string v1, "engageEnd"

    invoke-direct {p0, v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3382
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3383
    return-void
.end method

.method public enterBackground()V
    .locals 2

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_0

    .line 2626
    const-string v0, "enterBackground"

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2627
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2629
    :cond_0
    return-void
.end method

.method public enterForeground()V
    .locals 2

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_0

    .line 2634
    const-string v0, "enterForeground"

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2635
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2637
    :cond_0
    return-void
.end method

.method public forceShowInterstitial()V
    .locals 3

    .prologue
    .line 2451
    const-string v0, "forceShowInterstitial"

    const-string v1, "onShowInterstitialSuccess"

    const-string v2, "onShowInterstitialFail"

    invoke-direct {p0, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2452
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2453
    return-void
.end method

.method public getControllerKeyPressed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3335
    const-string v1, "interrupt"

    invoke-virtual {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setControllerKeyPressed(Ljava/lang/String;)V

    .line 3337
    return-object v0
.end method

.method public getDebugMode()I
    .locals 1

    .prologue
    .line 438
    sget v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDebugMode:I

    return v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 6

    .prologue
    .line 2480
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    .line 2481
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    .line 2483
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .line 2485
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v5, "Show OW Credits"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2486
    return-void
.end method

.method public getOrientationState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOrientationState:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Lcom/supersonicads/sdk/data/AdUnitsState;
    .locals 1

    .prologue
    .line 3618
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    return-object v0
.end method

.method public getState()Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    .locals 1

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    return-object v0
.end method

.method public handleSearchKeysURLs(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 3514
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v0

    .line 3516
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3518
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3519
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3521
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3522
    const/4 v0, 0x1

    .line 3526
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->onHideCustomView()V

    .line 3484
    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2394
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    .line 2395
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    .line 2396
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    .line 2397
    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    .line 2400
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRewardedVideoAppKey(Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRewardedVideoUserId(Ljava/lang/String;)V

    .line 2402
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRewardedVideoExtraParams(Ljava/util/Map;)V

    .line 2407
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v5, "Init BC"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2408
    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2422
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    .line 2423
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    .line 2424
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    .line 2425
    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    .line 2428
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialAppKey(Ljava/lang/String;)V

    .line 2429
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialUserId(Ljava/lang/String;)V

    .line 2430
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialExtraParams(Ljava/util/Map;)V

    .line 2432
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 2434
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v5, "Init IS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2435
    return-void
.end method

.method public interceptedUrlToStore()V
    .locals 1

    .prologue
    .line 2660
    const-string v0, "interceptedUrlToStore"

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2661
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2662
    return-void
.end method

.method public isInterstitialAdAvailable()Z
    .locals 1

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public load(I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2266
    :try_start_0
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2273
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2275
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mobileController.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2279
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getRequestParameters()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRequestParameters:Ljava/lang/String;

    .line 2282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRequestParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2285
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;JJI)V

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    .line 2330
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2337
    :goto_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    :goto_2
    return-void

    .line 2267
    :catch_0
    move-exception v0

    .line 2268
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController:: load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadBlank"

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2331
    :catch_1
    move-exception v0

    .line 2332
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController:: load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadWithPath"

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v1, "load(): Mobile Controller HTML Does not exist"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=htmlControllerDoesNotExistOnFileSystem"

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public nativeNavigationPressed(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 2649
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2650
    const-string v1, "nativeNavigationPressed"

    invoke-direct {p0, v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2651
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2652
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    return-void
.end method

.method public onFileDownloadFail(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 3

    .prologue
    .line 3270
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3272
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3275
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z

    if-eqz v0, :cond_0

    .line 3276
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3279
    :cond_0
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    if-eqz v0, :cond_1

    .line 3280
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3283
    :cond_1
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    if-eqz v0, :cond_2

    .line 3284
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3287
    :cond_2
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    if-eqz v0, :cond_3

    .line 3288
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3294
    :cond_3
    :goto_0
    return-void

    .line 3292
    :cond_4
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFileDownloadSuccess(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 2

    .prologue
    .line 3258
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->load(I)V

    .line 3264
    :goto_0
    return-void

    .line 3262
    :cond_0
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->assetCached(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pageFinished()V
    .locals 1

    .prologue
    .line 2655
    const-string v0, "pageFinished"

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2656
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2657
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 3436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 3438
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3446
    :cond_0
    :goto_0
    return-void

    .line 3439
    :catch_0
    move-exception v0

    .line 3440
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: pause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewPause"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3416
    return-void
.end method

.method public removeVideoEventsListener()V
    .locals 1

    .prologue
    .line 2235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

    .line 2236
    return-void
.end method

.method public restoreState(Lcom/supersonicads/sdk/data/AdUnitsState;)V
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 3623
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedStateLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 3625
    :try_start_0
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->shouldRestore()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3627
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreState(state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getDisplayedProduct()I

    move-result v0

    .line 3631
    if-eq v0, v4, :cond_8

    .line 3635
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 3636
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v2, "onRVAdClosed()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 3638
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVAdClosed()V

    .line 3654
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    .line 3661
    :goto_1
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->isInterstitialInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3663
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v2, "onInterstitialAvailability(false)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    if-eqz v0, :cond_1

    .line 3665
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialAvailability(Z)V

    .line 3669
    :cond_1
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getInterstitialAppKey()Ljava/lang/String;

    move-result-object v0

    .line 3670
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getInterstitialUserId()Ljava/lang/String;

    move-result-object v2

    .line 3671
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getInterstitialExtraParams()Ljava/util/Map;

    move-result-object v3

    .line 3673
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initInterstitial(appKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extraParam:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V

    .line 3678
    :cond_2
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->isRewardedVideoInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3679
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v2, "onRVNoMoreOffers()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    if-eqz v0, :cond_3

    .line 3681
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVNoMoreOffers()V

    .line 3684
    :cond_3
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getRewardedVideoAppKey()Ljava/lang/String;

    move-result-object v0

    .line 3685
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getRewardedVideoUserId()Ljava/lang/String;

    move-result-object v2

    .line 3686
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getRewardedVideoExtraParams()Ljava/util/Map;

    move-result-object v3

    .line 3688
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initRewardedVideo(appKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extraParam:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 3692
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/supersonicads/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 3695
    :cond_5
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 3697
    monitor-exit v1

    .line 3698
    return-void

    .line 3641
    :cond_6
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 3642
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v2, "onInterstitialAdClosed()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    if-eqz v0, :cond_0

    .line 3644
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialAdClosed()V

    goto/16 :goto_0

    .line 3697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3647
    :cond_7
    :try_start_1
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 3648
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v2, "onOWAdClosed()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    if-eqz v0, :cond_0

    .line 3650
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    goto/16 :goto_0

    .line 3656
    :cond_8
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v2, "No ad was opened"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 3450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 3452
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3458
    :cond_0
    :goto_0
    return-void

    .line 3453
    :catch_0
    move-exception v0

    .line 3454
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onResume() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewResume"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public runGenericFunction(Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3342
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    .line 3344
    const-string v0, "initBrandConnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3346
    const-string v0, "applicationUserId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "applicationKey"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 3359
    :goto_0
    return-void

    .line 3352
    :cond_0
    const-string v0, "showBrandConnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3354
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showBrandConnect()V

    goto :goto_0

    .line 3356
    :cond_1
    invoke-direct {p0, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mapToJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGenericFunctionSuccess"

    const-string v2, "onGenericFunctionFail"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3357
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setControllerKeyPressed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3326
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3327
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .prologue
    .line 418
    sput p1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDebugMode:I

    .line 419
    return-void
.end method

.method public setOnWebViewControllerChangeListener(Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;)V
    .locals 0

    .prologue
    .line 3464
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    .line 3465
    return-void
.end method

.method public setOrientationState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOrientationState:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V
    .locals 0

    .prologue
    .line 3530
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    .line 3531
    return-void
.end method

.method public setVideoEventsListener(Lcom/supersonicads/sdk/controller/VideoEventsListener;)V
    .locals 0

    .prologue
    .line 2230
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

    .line 2231
    return-void
.end method

.method public showBrandConnect()V
    .locals 3

    .prologue
    .line 2607
    const-string v0, "showBrandConnect"

    const-string v1, "onShowBrandConnectSuccess"

    const-string v2, "onShowBrandConnectFail"

    invoke-direct {p0, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2608
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2609
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 2446
    const-string v0, "showInterstitial"

    const-string v1, "onShowInterstitialSuccess"

    const-string v2, "onShowInterstitialFail"

    invoke-direct {p0, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2447
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2448
    return-void
.end method

.method public showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2464
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    .line 2465
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    .line 2466
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    .line 2467
    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .line 2472
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v5, "Show OW"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2473
    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3421
    :try_start_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3432
    :goto_0
    return-void

    .line 3422
    :catch_0
    move-exception v0

    .line 3425
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=unregisterConnectionReceiverIllegal"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3426
    :catch_1
    move-exception v0

    .line 3429
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterConnectionReceiver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v2, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public viewableChange(ZLjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 2640
    const-string v1, "webview"

    const-string v9, "isViewable"

    move-object v0, p0

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2644
    const-string v1, "viewableChange"

    invoke-direct {p0, v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2645
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2646
    return-void
.end method
