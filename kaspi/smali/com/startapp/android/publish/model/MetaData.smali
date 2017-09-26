.class public Lcom/startapp/android/publish/model/MetaData;
.super Lcom/startapp/android/publish/model/BaseResponse;
.source "StartAppSDK"


# static fields
.field public static final DEFAULT_AD_CACHE_TTL:J = 0x2a300L

.field public static final DEFAULT_AD_CLICK_URL:Ljava/lang/String;

.field public static final DEFAULT_AD_PLATFORM_HOST:Ljava/lang/String;

.field public static final DEFAULT_BG_BOTTOM:I = -0xdededf

.field public static final DEFAULT_BG_TOP:I = -0xdededf

.field public static final DEFAULT_DISABLE_INAPP_STORE:Z = false

.field public static final DEFAULT_DISABLE_RETURN_AD:Z = false

.field public static final DEFAULT_DISABLE_TWO_CLICKS:Z = false

.field public static final DEFAULT_FULLSCREEN_OVERLAY_PROBABILITY:I = 0x0

.field public static final DEFAULT_HOME_PROBABILITY_3D:I = 0x50

.field public static final DEFAULT_HTML_3D_PROBABILITY_3D:I = 0x32

.field public static final DEFAULT_MAX_ADS:I = 0xa

.field public static final DEFAULT_METADATA_HOST:Ljava/lang/String;

.field public static final DEFAULT_POWERED_BY_BG:Ljava/lang/Integer;

.field public static final DEFAULT_POWERED_BY_TEXT_COLOR:Ljava/lang/Integer;

.field public static final DEFAULT_PROBABILITY_3D:I = 0x50

.field public static final DEFAULT_PROFILE_ID:Ljava/lang/String;

.field public static final DEFAULT_RETURN_AD_MIN_BACKGROUND_TIME:J = 0x12cL

.field public static final DEFAULT_SESSION_MAX_BACKGROUND_TIME:I = 0x708

.field public static final DEFAULT_SMART_REDIRECT_TIMEOUT:I = 0x5

.field public static final DEFAULT_TITLE_BG:I = -0xe1e1e2

.field public static final DEFAULT_TITLE_CONTENT:Ljava/lang/String; = "Free Apps of the day"

.field public static final DEFAULT_TITLE_LINE_COLOR:Ljava/lang/Integer;

.field public static final DEFAULT_TITLE_TEXT_COLOR:Ljava/lang/Integer;

.field public static final DEFAULT_TITLE_TEXT_DECORATION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TITLE_TEXT_SIZE:Ljava/lang/Integer;

.field public static final KEY_METADATA:Ljava/lang/String; = "metaData"

.field public static final TEXT_DECORATION_BOLD:Ljava/lang/String; = "BOLD"

.field public static final TEXT_DECORATION_ITALIC:Ljava/lang/String; = "ITALIC"

.field public static final TEXT_DECORATION_UNDERLINE:Ljava/lang/String; = "UNDERLINE"

.field private static transient adRuleTypeFactory:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdRule;",
            ">;"
        }
    .end annotation
.end field

.field private static transient instance:Lcom/startapp/android/publish/model/MetaData; = null

.field private static transient lock:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x1L

.field private static transient task:Lcom/startapp/android/publish/e/h;


# instance fields
.field private AdInformation:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

.field private BannerOptions:Lcom/startapp/android/publish/banner/BannerOptions;

.field private SplashConfig:Lcom/startapp/android/publish/splash/SplashConfig;

.field private adCacheTTL:J

.field private adClickURL:Ljava/lang/String;

.field private adPlatformHost:Ljava/lang/String;

.field private adRules:Lcom/startapp/android/publish/model/adrules/AdRules;

.field private analytics:Lcom/startapp/android/publish/d/a;

.field private backgroundGradientBottom:Ljava/lang/Integer;

.field private backgroundGradientTop:Ljava/lang/Integer;

.field private disableInAppStore:Z

.field private disableReturnAd:Z

.field private disableTwoClicks:Z

.field private fullpageOfferWallProbability:Ljava/lang/Integer;

.field private fullpageOverlayProbability:Ljava/lang/Integer;

.field private homeProbability3D:Ljava/lang/Integer;

.field private itemDescriptionTextColor:Ljava/lang/Integer;

.field private itemDescriptionTextDecoration:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemDescriptionTextSize:Ljava/lang/Integer;

.field private itemGradientBottom:Ljava/lang/Integer;

.field private itemGradientTop:Ljava/lang/Integer;

.field private itemTitleTextColor:Ljava/lang/Integer;

.field private itemTitleTextDecoration:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemTitleTextSize:Ljava/lang/Integer;

.field private transient loading:Z

.field private maxAds:Ljava/lang/Integer;

.field private metaDataHost:Ljava/lang/String;

.field private transient metaDataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/e/p;",
            ">;"
        }
    .end annotation
.end field

.field private poweredByBackgroundColor:Ljava/lang/Integer;

.field private poweredByTextColor:Ljava/lang/Integer;

.field private probability3D:Ljava/lang/Integer;

.field private profileId:Ljava/lang/String;

.field private transient ready:Z

.field private returnAdMinBackgroundTime:J

.field private sessionMaxBackgroundTime:I

.field private smartRedirectTimeout:I

.field private templates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/model/MetaDataStyle;",
            ">;"
        }
    .end annotation
.end field

.field private titleBackgroundColor:Ljava/lang/Integer;

.field private titleContent:Ljava/lang/String;

.field private titleLineColor:Ljava/lang/Integer;

.field private titleTextColor:Ljava/lang/Integer;

.field private titleTextDecoration:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private titleTextSize:Ljava/lang/Integer;

.field private video:Lcom/startapp/android/publish/video/VideoConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 38
    new-instance v0, Lcom/startapp/android/publish/model/MetaData;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/MetaData;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->instance:Lcom/startapp/android/publish/model/MetaData;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    .line 40
    const-class v0, Lcom/startapp/android/publish/model/adrules/AdRule;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->of(Ljava/lang/Class;Ljava/lang/String;)Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/startapp/android/publish/model/adrules/ProbabilityRule;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;)Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/startapp/android/publish/model/adrules/FreqCapRule;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;)Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->adRuleTypeFactory:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    .line 63
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_SIZE:Ljava/lang/Integer;

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_COLOR:Ljava/lang/Integer;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "BOLD"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_DECORATION:Ljava/util/Set;

    .line 66
    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_TITLE_LINE_COLOR:Ljava/lang/Integer;

    .line 68
    const v0, -0xe1e1e2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_POWERED_BY_BG:Ljava/lang/Integer;

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_POWERED_BY_TEXT_COLOR:Ljava/lang/Integer;

    .line 72
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_AD_CLICK_URL:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_METADATA_HOST:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_AD_PLATFORM_HOST:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_PROFILE_ID:Ljava/lang/String;

    return-void

    .line 72
    nop

    :array_0
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x77t
        0x77t
        0x77t
        0x2et
        0x73t
        0x74t
        0x61t
        0x72t
        0x74t
        0x61t
        0x70t
        0x70t
        0x65t
        0x78t
        0x63t
        0x68t
        0x61t
        0x6et
        0x67t
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2ft
        0x61t
        0x64t
        0x43t
        0x6ct
        0x69t
        0x63t
        0x6bt
    .end array-data

    .line 74
    :array_1
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x69t
        0x6et
        0x69t
        0x74t
        0x2et
        0x73t
        0x74t
        0x61t
        0x72t
        0x74t
        0x61t
        0x70t
        0x70t
        0x65t
        0x78t
        0x63t
        0x68t
        0x61t
        0x6et
        0x67t
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x31t
        0x2et
        0x33t
        0x2ft
    .end array-data

    .line 76
    nop

    :array_2
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x77t
        0x77t
        0x77t
        0x2et
        0x73t
        0x74t
        0x61t
        0x72t
        0x74t
        0x61t
        0x70t
        0x70t
        0x65t
        0x78t
        0x63t
        0x68t
        0x61t
        0x6et
        0x67t
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x31t
        0x2et
        0x33t
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x50

    const v1, -0xdededf

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Lcom/startapp/android/publish/model/BaseResponse;-><init>()V

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->probability3D:Ljava/lang/Integer;

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->homeProbability3D:Ljava/lang/Integer;

    .line 95
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->fullpageOfferWallProbability:Ljava/lang/Integer;

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->fullpageOverlayProbability:Ljava/lang/Integer;

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->backgroundGradientTop:Ljava/lang/Integer;

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->backgroundGradientBottom:Ljava/lang/Integer;

    .line 99
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->maxAds:Ljava/lang/Integer;

    .line 102
    const v0, -0xe1e1e2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleBackgroundColor:Ljava/lang/Integer;

    .line 103
    const-string v0, "Free Apps of the day"

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleContent:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_SIZE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleTextSize:Ljava/lang/Integer;

    .line 105
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleTextColor:Ljava/lang/Integer;

    .line 106
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_TITLE_TEXT_DECORATION:Ljava/util/Set;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleTextDecoration:Ljava/util/Set;

    .line 107
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_TITLE_LINE_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleLineColor:Ljava/lang/Integer;

    .line 113
    const v0, -0xd5d6c7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemGradientTop:Ljava/lang/Integer;

    .line 114
    const v0, -0x858477

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemGradientBottom:Ljava/lang/Integer;

    .line 115
    sget-object v0, Lcom/startapp/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_TITLE_TEXT_SIZE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemTitleTextSize:Ljava/lang/Integer;

    .line 116
    sget-object v0, Lcom/startapp/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_TITLE_TEXT_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemTitleTextColor:Ljava/lang/Integer;

    .line 117
    sget-object v0, Lcom/startapp/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_TITLE_TEXT_DECORATION:Ljava/util/Set;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemTitleTextDecoration:Ljava/util/Set;

    .line 118
    sget-object v0, Lcom/startapp/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_DESC_TEXT_SIZE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemDescriptionTextSize:Ljava/lang/Integer;

    .line 119
    sget-object v0, Lcom/startapp/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_DESC_TEXT_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemDescriptionTextColor:Ljava/lang/Integer;

    .line 120
    sget-object v0, Lcom/startapp/android/publish/model/MetaDataStyle;->DEFAULT_ITEM_DESC_TEXT_DECORATION:Ljava/util/Set;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemDescriptionTextDecoration:Ljava/util/Set;

    .line 125
    new-instance v0, Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-direct {v0}, Lcom/startapp/android/publish/banner/BannerOptions;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->BannerOptions:Lcom/startapp/android/publish/banner/BannerOptions;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->templates:Ljava/util/HashMap;

    .line 130
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_POWERED_BY_BG:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->poweredByBackgroundColor:Ljava/lang/Integer;

    .line 131
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_POWERED_BY_TEXT_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->poweredByTextColor:Ljava/lang/Integer;

    .line 134
    new-instance v0, Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-direct {v0}, Lcom/startapp/android/publish/splash/SplashConfig;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->SplashConfig:Lcom/startapp/android/publish/splash/SplashConfig;

    .line 137
    invoke-static {}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->AdInformation:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    .line 140
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_AD_CLICK_URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->adClickURL:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_METADATA_HOST:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->metaDataHost:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_AD_PLATFORM_HOST:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->adPlatformHost:Ljava/lang/String;

    .line 145
    const/16 v0, 0x708

    iput v0, p0, Lcom/startapp/android/publish/model/MetaData;->sessionMaxBackgroundTime:I

    .line 146
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->DEFAULT_PROFILE_ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->profileId:Ljava/lang/String;

    .line 149
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/startapp/android/publish/model/MetaData;->returnAdMinBackgroundTime:J

    .line 151
    const-wide/32 v0, 0x2a300

    iput-wide v0, p0, Lcom/startapp/android/publish/model/MetaData;->adCacheTTL:J

    .line 153
    iput-boolean v2, p0, Lcom/startapp/android/publish/model/MetaData;->disableReturnAd:Z

    .line 155
    const/4 v0, 0x5

    iput v0, p0, Lcom/startapp/android/publish/model/MetaData;->smartRedirectTimeout:I

    .line 157
    iput-boolean v2, p0, Lcom/startapp/android/publish/model/MetaData;->disableTwoClicks:Z

    .line 159
    new-instance v0, Lcom/startapp/android/publish/model/adrules/AdRules;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/adrules/AdRules;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->adRules:Lcom/startapp/android/publish/model/adrules/AdRules;

    .line 161
    iput-boolean v2, p0, Lcom/startapp/android/publish/model/MetaData;->disableInAppStore:Z

    .line 163
    new-instance v0, Lcom/startapp/android/publish/d/a;

    invoke-direct {v0}, Lcom/startapp/android/publish/d/a;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->analytics:Lcom/startapp/android/publish/d/a;

    .line 165
    new-instance v0, Lcom/startapp/android/publish/video/VideoConfig;

    invoke-direct {v0}, Lcom/startapp/android/publish/video/VideoConfig;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->video:Lcom/startapp/android/publish/video/VideoConfig;

    .line 167
    iput-boolean v2, p0, Lcom/startapp/android/publish/model/MetaData;->loading:Z

    .line 168
    iput-boolean v2, p0, Lcom/startapp/android/publish/model/MetaData;->ready:Z

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    .line 173
    invoke-virtual {p0}, Lcom/startapp/android/publish/model/MetaData;->getAdInformationConfig()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->f()V

    .line 174
    return-void
.end method

.method public static failedLoading()V
    .locals 4

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    sget-object v1, Lcom/startapp/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    iget-object v2, v2, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    iget-object v2, v2, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    iget-object v2, v2, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 239
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/startapp/android/publish/model/MetaData;->loading:Z

    .line 240
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    if-eqz v0, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/e/p;

    .line 244
    invoke-interface {v0}, Lcom/startapp/android/publish/e/p;->onFailedLoadingMeta()V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 247
    :cond_1
    return-void
.end method

.method public static getGson()Lcom/startapp/android/publish/gson/Gson;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Lcom/startapp/android/publish/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/startapp/android/publish/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/startapp/android/publish/model/MetaData;->adRuleTypeFactory:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/startapp/android/publish/gson/TypeAdapterFactory;)Lcom/startapp/android/publish/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/gson/GsonBuilder;->create()Lcom/startapp/android/publish/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/startapp/android/publish/model/MetaData;
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->instance:Lcom/startapp/android/publish/model/MetaData;

    return-object v0
.end method

.method public static getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 177
    const-string v0, "com.startapp.android.publish"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getGson()Lcom/startapp/android/publish/gson/Gson;

    move-result-object v1

    const-string v2, "metaData"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/startapp/android/publish/model/MetaData;

    invoke-virtual {v1, v0, v2}, Lcom/startapp/android/publish/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/MetaData;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->instance:Lcom/startapp/android/publish/model/MetaData;

    .line 184
    :goto_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAdInformationConfig()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->f()V

    .line 185
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/model/MetaData;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/MetaData;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->instance:Lcom/startapp/android/publish/model/MetaData;

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaData;)V
    .locals 4

    .prologue
    .line 188
    sget-object v1, Lcom/startapp/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    iput-object v0, p1, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    .line 192
    sput-object p1, Lcom/startapp/android/publish/model/MetaData;->instance:Lcom/startapp/android/publish/model/MetaData;

    .line 195
    invoke-static {}, Lcom/startapp/android/publish/d;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x3

    const-string v2, "MetaData received:"

    invoke-static {v0, v2}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 197
    const/4 v0, 0x3

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getGson()Lcom/startapp/android/publish/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/startapp/android/publish/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 200
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/startapp/android/publish/model/MetaData;->AdInformation:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/adinformation/AdInformationConfig;)V

    .line 202
    const-string v0, "com.startapp.android.publish"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getGson()Lcom/startapp/android/publish/gson/Gson;

    move-result-object v2

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v3, "metaData"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    const/4 v0, 0x3

    const-string v3, "MetaData saved:"

    invoke-static {v0, v3}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 209
    const/4 v0, 0x3

    invoke-static {v0, v2}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAdInformationConfig()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->f()V

    .line 213
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/startapp/android/publish/model/MetaData;->loading:Z

    .line 214
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/startapp/android/publish/model/MetaData;->ready:Z

    .line 216
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    iget-object v2, v2, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    iget-object v2, v2, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/e/p;

    .line 220
    invoke-interface {v0}, Lcom/startapp/android/publish/e/p;->onFinishLoadingMeta()V

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 224
    :cond_1
    :try_start_1
    const-string v0, "totalSessions"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    const-string v2, "totalSessions"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const/4 v0, 0x0

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->task:Lcom/startapp/android/publish/e/h;

    .line 228
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    return-void
.end method


# virtual methods
.method public addMetaDataListener(Lcom/startapp/android/publish/e/p;)V
    .locals 2

    .prologue
    .line 281
    sget-object v1, Lcom/startapp/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAdCacheTtl()J
    .locals 4

    .prologue
    .line 447
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/startapp/android/publish/model/MetaData;->adCacheTTL:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAdClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->adClickURL:Ljava/lang/String;

    return-object v0
.end method

.method public getAdInformationConfig()Lcom/startapp/android/publish/adinformation/AdInformationConfig;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->AdInformation:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    return-object v0
.end method

.method public getAdPlatformHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/startapp/android/publish/d;->OVERRIDE_HOST:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lcom/startapp/android/publish/d;->OVERRIDE_HOST:Ljava/lang/String;

    .line 434
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->adPlatformHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdRules()Lcom/startapp/android/publish/model/adrules/AdRules;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->adRules:Lcom/startapp/android/publish/model/adrules/AdRules;

    return-object v0
.end method

.method public getAnalyticsConfig()Lcom/startapp/android/publish/d/a;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->analytics:Lcom/startapp/android/publish/d/a;

    return-object v0
.end method

.method public getBackgroundGradientBottom()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->backgroundGradientBottom:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBackgroundGradientTop()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->backgroundGradientTop:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBannerOptions()Lcom/startapp/android/publish/banner/BannerOptions;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->BannerOptions:Lcom/startapp/android/publish/banner/BannerOptions;

    return-object v0
.end method

.method public getBannerOptionsCopy()Lcom/startapp/android/publish/banner/BannerOptions;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/startapp/android/publish/banner/BannerOptions;

    iget-object v1, p0, Lcom/startapp/android/publish/model/MetaData;->BannerOptions:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/banner/BannerOptions;-><init>(Lcom/startapp/android/publish/banner/BannerOptions;)V

    return-object v0
.end method

.method public getFullpageOfferwallProbability()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->fullpageOfferWallProbability:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFullscreenOverlayProbability()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->fullpageOverlayProbability:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHomeProbability3D()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->homeProbability3D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemDescriptionTextColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemDescriptionTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemDescriptionTextDecoration()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemDescriptionTextDecoration:Ljava/util/Set;

    return-object v0
.end method

.method public getItemDescriptionTextSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemDescriptionTextSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemGradientBottom()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemGradientBottom:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemGradientTop()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemGradientTop:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemTitleTextColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemTitleTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemTitleTextDecoration()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemTitleTextDecoration:Ljava/util/Set;

    return-object v0
.end method

.method public getItemTitleTextSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->itemTitleTextSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxAds()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->maxAds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMetaDataHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/startapp/android/publish/d;->OVERRIDE_HOST:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/startapp/android/publish/d;->OVERRIDE_HOST:Ljava/lang/String;

    .line 426
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->metaDataHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPoweredByBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->poweredByBackgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPoweredByTextColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->poweredByTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProbability3D()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->probability3D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnAdMinBackgroundTime()J
    .locals 4

    .prologue
    .line 443
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/startapp/android/publish/model/MetaData;->returnAdMinBackgroundTime:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionMaxBackgroundTime()J
    .locals 4

    .prologue
    .line 439
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/startapp/android/publish/model/MetaData;->sessionMaxBackgroundTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSmartRedirectTimeout()J
    .locals 4

    .prologue
    .line 459
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/startapp/android/publish/model/MetaData;->smartRedirectTimeout:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSplashConfig()Lcom/startapp/android/publish/splash/SplashConfig;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->SplashConfig:Lcom/startapp/android/publish/splash/SplashConfig;

    return-object v0
.end method

.method public getTemplate(Ljava/lang/String;)Lcom/startapp/android/publish/model/MetaDataStyle;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->templates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/MetaDataStyle;

    return-object v0
.end method

.method public getTitleBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleBackgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitleContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLineColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleLineColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitleTextColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitleTextDecoration()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleTextDecoration:Ljava/util/Set;

    return-object v0
.end method

.method public getTitleTextSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->titleTextSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVideoConfig()Lcom/startapp/android/publish/video/VideoConfig;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaData;->video:Lcom/startapp/android/publish/video/VideoConfig;

    return-object v0
.end method

.method public isDisableInAppStore()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/MetaData;->disableInAppStore:Z

    return v0
.end method

.method public isDisableReturnAd()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/MetaData;->disableReturnAd:Z

    return v0
.end method

.method public isDisableTwoClicks()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/MetaData;->disableTwoClicks:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/MetaData;->loading:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/MetaData;->ready:Z

    return v0
.end method

.method public loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;ZLcom/startapp/android/publish/e/p;)V
    .locals 7

    .prologue
    .line 250
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/startapp/android/publish/model/MetaData;->loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;ZLcom/startapp/android/publish/e/p;Z)V

    .line 251
    return-void
.end method

.method public loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;ZLcom/startapp/android/publish/e/p;Z)V
    .locals 2

    .prologue
    .line 255
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 256
    invoke-interface {p5}, Lcom/startapp/android/publish/e/p;->onFinishLoadingMeta()V

    .line 258
    :cond_0
    sget-object v1, Lcom/startapp/android/publish/model/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p6, :cond_7

    .line 260
    :cond_1
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p6, :cond_4

    .line 261
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/model/MetaData;->loading:Z

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/model/MetaData;->ready:Z

    .line 263
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->task:Lcom/startapp/android/publish/e/h;

    if-eqz v0, :cond_3

    .line 264
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->task:Lcom/startapp/android/publish/e/h;

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/h;->b()V

    .line 266
    :cond_3
    new-instance v0, Lcom/startapp/android/publish/e/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/startapp/android/publish/e/h;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V

    sput-object v0, Lcom/startapp/android/publish/model/MetaData;->task:Lcom/startapp/android/publish/e/h;

    .line 267
    sget-object v0, Lcom/startapp/android/publish/model/MetaData;->task:Lcom/startapp/android/publish/e/h;

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/h;->a()V

    .line 269
    :cond_4
    if-eqz p4, :cond_5

    if-eqz p5, :cond_5

    .line 270
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/startapp/android/publish/model/MetaData;->addMetaDataListener(Lcom/startapp/android/publish/e/p;)V

    .line 272
    :cond_5
    monitor-exit v1

    .line 278
    :cond_6
    :goto_0
    return-void

    .line 274
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    .line 276
    invoke-interface {p5}, Lcom/startapp/android/publish/e/p;->onFinishLoadingMeta()V

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
