.class public interface abstract Lcom/adsdk/sdk/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final AD_EXTRA:Ljava/lang/String; = "RICH_AD_DATA"

.field public static final AD_FAILED:I = -0x1

.field public static final AD_TYPE_EXTRA:Ljava/lang/String; = "RICH_AD_TYPE"

.field public static final CACHE_DOWNLOAD_PERIOD:J = 0x927c0L

.field public static final CONNECTION_TIMEOUT:I = 0x2710

.field public static final CONNECTION_TYPE_MOBILE_1xRTT:Ljava/lang/String; = "1xRTT"

.field public static final CONNECTION_TYPE_MOBILE_CDMA:Ljava/lang/String; = "CDMA"

.field public static final CONNECTION_TYPE_MOBILE_EDGE:Ljava/lang/String; = "EDGE"

.field public static final CONNECTION_TYPE_MOBILE_EHRPD:Ljava/lang/String; = "EHRPD"

.field public static final CONNECTION_TYPE_MOBILE_EVDO_0:Ljava/lang/String; = "EVDO_0"

.field public static final CONNECTION_TYPE_MOBILE_EVDO_A:Ljava/lang/String; = "EVDO_A"

.field public static final CONNECTION_TYPE_MOBILE_EVDO_B:Ljava/lang/String; = "EVDO_B"

.field public static final CONNECTION_TYPE_MOBILE_GPRS:Ljava/lang/String; = "GPRS"

.field public static final CONNECTION_TYPE_MOBILE_HSDPA:Ljava/lang/String; = "HSDPA"

.field public static final CONNECTION_TYPE_MOBILE_HSPA:Ljava/lang/String; = "HSPA"

.field public static final CONNECTION_TYPE_MOBILE_HSPAP:Ljava/lang/String; = "HSPAP"

.field public static final CONNECTION_TYPE_MOBILE_HSUPA:Ljava/lang/String; = "HSUPA"

.field public static final CONNECTION_TYPE_MOBILE_IDEN:Ljava/lang/String; = "IDEN"

.field public static final CONNECTION_TYPE_MOBILE_LTE:Ljava/lang/String; = "LTE"

.field public static final CONNECTION_TYPE_MOBILE_UMTS:Ljava/lang/String; = "UMTS"

.field public static final CONNECTION_TYPE_MOBILE_UNKNOWN:Ljava/lang/String; = "MOBILE"

.field public static final CONNECTION_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final CONNECTION_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final CONNECTION_TYPE_WIMAX:Ljava/lang/String; = "WIMAX"

.field public static final ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final HIDE_BORDER:Ljava/lang/String; = "<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%} body {margin: 0; padding: 0}</style>"

.field public static final IMAGE:I = 0x0

.field public static final IMAGE_BODY:Ljava/lang/String; = "<body style=\'\"\'margin: 0px; padding: 0px; text-align:center;\'\"\'><img src=\'\"\'{0}\'\"\' width=\'\"\'{1}\'dp\"\' height=\'\"\'{2}\'dp\"\'/></body>"

.field public static final INTERSTITIAL_HIDE_BORDER:Ljava/lang/String; = "<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} body {height:100%; width:100%;} img {max-width:100%; max-height:100%; width:auto; height:auto; position: absolute; margin: auto; top: 0; left: 0; right: 0; bottom: 0;}</style>"

.field public static final LIVE:I = 0x0

.field public static final LOADING:Ljava/lang/CharSequence;

.field public static final MAX_NUMBER_OF_TRACKING_RETRIES:I = 0x5

.field public static final MRAID:I = 0x4

.field public static final NO_AD:I = 0x2

.field public static final PREFS_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "3.0"

.field public static final REDIRECT_URI:Ljava/lang/String; = "REDIRECT_URI"

.field public static final RESPONSE_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field public static final SOCKET_TIMEOUT:I = 0x2710

.field public static final TAG:Ljava/lang/String; = "ADSDK"

.field public static final TEST:I = 0x1

.field public static final TEXT:I = 0x1

.field public static final TOUCH_DISTANCE:I = 0x1e

.field public static final USER_AGENT_PATTERN:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android %1$s; %2$s; %3$s Build/%4$s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

.field public static final VERSION:Ljava/lang/String; = "6.0.8"

.field public static final VIDEO:I = 0x3

.field public static final VIDEO_LOAD_TIMEOUT:J = 0x124f80L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "Loading...."

    sput-object v0, Lcom/adsdk/sdk/Const;->LOADING:Ljava/lang/CharSequence;

    .line 66
    return-void
.end method
