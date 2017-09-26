.class public Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;
.super Ljava/lang/Object;
.source "SupersonicAdsAdvertiserAgent.java"

# interfaces
.implements Lcom/supersonicads/sdk/SSAAdvertiserTest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;,
        Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$SuperSonicAdsAdvertiserException;
    }
.end annotation


# static fields
.field private static final BUNDLE_ID:Ljava/lang/String; = "bundleId"

.field private static final DEVICE_IDS:Ljava/lang/String; = "deviceIds"

.field private static final DOMAIN:Ljava/lang/String; = "/campaigns/onLoad?"

.field private static PACKAGE_NAME:Ljava/lang/String; = null

.field private static SERVICE_HOST_NAME:Ljava/lang/String; = null

.field private static SERVICE_PORT:I = 0x0

.field private static SERVICE_PROTOCOL:Ljava/lang/String; = null

.field private static final SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "SupersonicAdsAdvertiserAgent"

.field private static TIME_API:Ljava/lang/String;

.field public static sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "https"

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PROTOCOL:Ljava/lang/String;

    .line 35
    const-string v0, "www.supersonicads.com"

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_HOST_NAME:Ljava/lang/String;

    .line 36
    const/16 v0, 0x1bb

    sput v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PORT:I

    .line 38
    const-string v0, "https://www.supersonicads.com/timestamp.php"

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->TIME_API:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->getRequestParameters(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PROTOCOL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_HOST_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PORT:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;
    .locals 3

    .prologue
    .line 52
    const-class v1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    monitor-enter v1

    :try_start_0
    const-string v0, "SupersonicAdsAdvertiserAgent"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    invoke-direct {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;-><init>()V

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    .line 57
    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRequestParameters(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "bundleId"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 153
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v3

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 159
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "deviceIds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AID"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isLimitAdTrackingEnabled"

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->getUTCTimeStamp(Landroid/content/Context;)I

    move-result v0

    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "signature"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->PACKAGE_NAME:Ljava/lang/String;

    goto/16 :goto_0

    .line 175
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method private getUTCTimeStamp(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 293
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->TIME_API:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, v0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->performRequest(Ljava/net/URL;Landroid/content/Context;)Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, v0}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 301
    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 307
    rem-int/lit8 v1, v0, 0x3c
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    .line 315
    :goto_0
    return v0

    .line 313
    :catch_0
    move-exception v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearReportApp(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 116
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setReportAppStarted(Z)V

    .line 117
    return-void
.end method

.method public performRequest(Ljava/net/URL;Landroid/content/Context;)Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v9, 0xc8

    .line 204
    new-instance v6, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;

    invoke-direct {v6, p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;-><init>(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;)V

    .line 215
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 217
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 220
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 221
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 223
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 224
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 226
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 228
    const v1, 0x19000

    :try_start_3
    new-array v1, v1, [B

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 237
    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 239
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    .line 248
    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    move v1, v4

    .line 258
    :goto_1
    if-eqz v2, :cond_0

    .line 259
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 263
    :cond_0
    :goto_2
    if-eq v1, v9, :cond_1

    .line 264
    const-string v2, "SupersonicAdsAdvertiserAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_1
    if-eqz v3, :cond_2

    .line 270
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_2
    invoke-virtual {v6, v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v0, :cond_9

    .line 276
    const-string v0, "empty"

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    .line 282
    :goto_3
    return-object v6

    .line 243
    :cond_3
    if-nez v5, :cond_4

    .line 258
    :cond_4
    if-eqz v3, :cond_5

    .line 259
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 263
    :cond_5
    :goto_4
    if-eq v4, v9, :cond_6

    .line 264
    const-string v2, "SupersonicAdsAdvertiserAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " URL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_6
    if-eqz v0, :cond_7

    .line 270
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_7
    invoke-virtual {v6, v4}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v1, :cond_8

    .line 276
    const-string v0, "empty"

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto :goto_3

    .line 278
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto :goto_3

    .line 249
    :catch_1
    move-exception v0

    move-object v3, v2

    move v4, v5

    move-object v0, v2

    .line 258
    :goto_5
    if-eqz v3, :cond_a

    .line 259
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 263
    :cond_a
    :goto_6
    if-eq v4, v9, :cond_b

    .line 264
    const-string v1, "SupersonicAdsAdvertiserAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " URL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_b
    if-eqz v0, :cond_c

    .line 270
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_c
    invoke-virtual {v6, v4}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_d

    .line 276
    const-string v0, "empty"

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 250
    :catch_2
    move-exception v0

    move-object v3, v2

    move v4, v5

    move-object v0, v2

    .line 258
    :goto_7
    if-eqz v3, :cond_e

    .line 259
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 263
    :cond_e
    :goto_8
    if-eq v4, v9, :cond_f

    .line 264
    const-string v1, "SupersonicAdsAdvertiserAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " URL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_f
    if-eqz v0, :cond_10

    .line 270
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_10
    invoke-virtual {v6, v4}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_11

    .line 276
    const-string v0, "empty"

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 251
    :catch_3
    move-exception v0

    move-object v3, v2

    move v4, v5

    move-object v0, v2

    .line 258
    :goto_9
    if-eqz v3, :cond_12

    .line 259
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 263
    :cond_12
    :goto_a
    if-eq v4, v9, :cond_13

    .line 264
    const-string v1, "SupersonicAdsAdvertiserAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " URL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_13
    if-eqz v0, :cond_14

    .line 270
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_14
    invoke-virtual {v6, v4}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_15

    .line 276
    const-string v0, "empty"

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 252
    :catch_4
    move-exception v0

    move-object v3, v2

    move v4, v5

    move-object v0, v2

    .line 258
    :goto_b
    if-eqz v3, :cond_16

    .line 259
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 263
    :cond_16
    :goto_c
    if-eq v4, v9, :cond_17

    .line 264
    const-string v1, "SupersonicAdsAdvertiserAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RESPONSE CODE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " URL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_17
    if-eqz v0, :cond_18

    .line 270
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_18
    invoke-virtual {v6, v4}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_19

    .line 276
    const-string v0, "empty"

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 257
    :catchall_0
    move-exception v0

    move-object v3, v2

    move v4, v5

    move-object v1, v2

    .line 258
    :goto_d
    if-eqz v3, :cond_1a

    .line 259
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 263
    :cond_1a
    :goto_e
    if-eq v4, v9, :cond_1b

    .line 264
    const-string v3, "SupersonicAdsAdvertiserAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " RESPONSE CODE: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " URL: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_1b
    if-eqz v1, :cond_1c

    .line 270
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_1c
    invoke-virtual {v6, v4}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_1d

    .line 276
    const-string v1, "empty"

    invoke-virtual {v6, v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    .line 278
    :goto_f
    throw v0

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto :goto_f

    .line 261
    :catch_5
    move-exception v2

    goto/16 :goto_4

    :catch_6
    move-exception v2

    goto/16 :goto_2

    :catch_7
    move-exception v1

    goto/16 :goto_6

    :catch_8
    move-exception v1

    goto/16 :goto_8

    :catch_9
    move-exception v1

    goto/16 :goto_a

    :catch_a
    move-exception v1

    goto/16 :goto_c

    :catch_b
    move-exception v3

    goto :goto_e

    .line 257
    :catchall_1
    move-exception v1

    move-object v3, v2

    move v4, v5

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_d

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_d

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_d

    :catchall_4
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_d

    .line 252
    :catch_c
    move-exception v1

    move-object v3, v2

    move v4, v5

    goto/16 :goto_b

    :catch_d
    move-exception v1

    move-object v3, v2

    goto/16 :goto_b

    :catch_e
    move-exception v1

    goto/16 :goto_b

    :catch_f
    move-exception v2

    move-object v2, v1

    goto/16 :goto_b

    .line 251
    :catch_10
    move-exception v1

    move-object v3, v2

    move v4, v5

    goto/16 :goto_9

    :catch_11
    move-exception v1

    move-object v3, v2

    goto/16 :goto_9

    :catch_12
    move-exception v1

    goto/16 :goto_9

    :catch_13
    move-exception v2

    move-object v2, v1

    goto/16 :goto_9

    .line 250
    :catch_14
    move-exception v1

    move-object v3, v2

    move v4, v5

    goto/16 :goto_7

    :catch_15
    move-exception v1

    move-object v3, v2

    goto/16 :goto_7

    :catch_16
    move-exception v1

    goto/16 :goto_7

    :catch_17
    move-exception v2

    move-object v2, v1

    goto/16 :goto_7

    .line 249
    :catch_18
    move-exception v1

    move-object v3, v2

    move v4, v5

    goto/16 :goto_5

    :catch_19
    move-exception v1

    move-object v3, v2

    goto/16 :goto_5

    :catch_1a
    move-exception v1

    goto/16 :goto_5

    :catch_1b
    move-exception v2

    move-object v2, v1

    goto/16 :goto_5

    .line 248
    :catch_1c
    move-exception v0

    move-object v0, v2

    move v1, v5

    move-object v3, v2

    goto/16 :goto_1

    :catch_1d
    move-exception v1

    move v1, v5

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_1

    :catch_1e
    move-exception v1

    move v1, v4

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_1

    :catch_1f
    move-exception v1

    move v1, v4

    move-object v10, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v10

    goto/16 :goto_1
.end method

.method public reportAppStarted(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getReportAppStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;

    invoke-direct {v1, p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;-><init>(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setDomain(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 99
    sput-object p1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PROTOCOL:Ljava/lang/String;

    .line 100
    sput-object p2, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_HOST_NAME:Ljava/lang/String;

    .line 101
    sput p3, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PORT:I

    .line 102
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    sput-object p1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->PACKAGE_NAME:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setTimeAPI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    sput-object p1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->TIME_API:Ljava/lang/String;

    .line 107
    return-void
.end method
