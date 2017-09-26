.class public Lcom/revmob/internal/HTTPHelper;
.super Ljava/lang/Object;
.source "HTTPHelper.java"


# static fields
.field private static eulaUrl:Ljava/lang/String;

.field private static eulaVersion:Ljava/lang/String;

.field public static globalTimeoutInSeconds:I

.field private static ipAddress:Ljava/lang/String;

.field private static shouldContinueOnBackground:Z

.field private static shouldExtractGeolocation:Z

.field private static shouldExtractOtherAppsData:Z

.field private static shouldExtractSocial:Z

.field private static shouldShowEula:Z

.field private static userAgent:Ljava/lang/String;


# instance fields
.field private httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x1e

    sput v0, Lcom/revmob/internal/HTTPHelper;->globalTimeoutInSeconds:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/revmob/internal/HTTPHelper;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V
    .locals 5

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/revmob/internal/HTTPHelper;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 88
    sget v0, Lcom/revmob/internal/HTTPHelper;->globalTimeoutInSeconds:I

    invoke-virtual {p0, v0}, Lcom/revmob/internal/HTTPHelper;->setTimeout(I)V

    .line 89
    iget-object v0, p0, Lcom/revmob/internal/HTTPHelper;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 90
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 91
    return-void
.end method

.method public static calculateInSampleSize([III)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 246
    const/4 v1, 0x0

    aget v1, p0, v1

    .line 247
    aget v2, p0, v0

    .line 250
    if-gt v2, p2, :cond_0

    if-le v1, p1, :cond_1

    .line 251
    :cond_0
    int-to-float v0, v2

    int-to-float v2, p2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 252
    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 253
    if-ge v0, v1, :cond_2

    .line 255
    :cond_1
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 253
    goto :goto_0

    .line 255
    :cond_3
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public static encodedResponseBody(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const-string v0, ""

    .line 164
    const/16 v1, 0x400

    .line 165
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 166
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 167
    new-array v1, v1, [C

    .line 169
    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0x3ff

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    if-lez v4, :cond_1

    .line 170
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    :catch_0
    move-exception v1

    .line 175
    const-string v1, "Read error."

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getEulaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/revmob/internal/HTTPHelper;->eulaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getEulaVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/revmob/internal/HTTPHelper;->eulaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/revmob/internal/HTTPHelper;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getShouldContinueOnBackground()Z
    .locals 1

    .prologue
    .line 329
    sget-boolean v0, Lcom/revmob/internal/HTTPHelper;->shouldContinueOnBackground:Z

    return v0
.end method

.method public static getShouldExtractGeolocation()Z
    .locals 1

    .prologue
    .line 321
    sget-boolean v0, Lcom/revmob/internal/HTTPHelper;->shouldExtractGeolocation:Z

    return v0
.end method

.method public static getShouldExtractOtherAppsData()Z
    .locals 1

    .prologue
    .line 325
    sget-boolean v0, Lcom/revmob/internal/HTTPHelper;->shouldExtractOtherAppsData:Z

    return v0
.end method

.method public static getShouldExtractSocial()Z
    .locals 1

    .prologue
    .line 317
    sget-boolean v0, Lcom/revmob/internal/HTTPHelper;->shouldExtractSocial:Z

    return v0
.end method

.method public static getShouldShowEula()Z
    .locals 1

    .prologue
    .line 333
    sget-boolean v0, Lcom/revmob/internal/HTTPHelper;->shouldShowEula:Z

    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/revmob/internal/HTTPHelper;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/revmob/internal/HTTPHelper;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on requesting path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Is the device connected to the internet?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 189
    :catch_2
    move-exception v0

    .line 190
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 191
    :catch_3
    move-exception v0

    .line 193
    const-string v0, "Server took too long to respond."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :catch_4
    move-exception v0

    .line 195
    throw v0

    .line 196
    :catch_5
    move-exception v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on requesting path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did the device lost its connection?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private sendRequestDealingWithSSLErrors(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 4

    .prologue
    .line 204
    :try_start_0
    invoke-direct {p0, p1}, Lcom/revmob/internal/HTTPHelper;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 209
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    const-string v3, "http://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/revmob/internal/HTTPHelper;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    .line 216
    :catch_1
    move-exception v0

    .line 218
    const-string v0, "Problem with SSL. What is the version of your Android?"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 223
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :catch_2
    move-exception v0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setEulaUrl(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 338
    const-string v0, "https://s3.amazonaws.com/www.revmob.com/Revmob_i_agree_terms.txt"

    sput-object v0, Lcom/revmob/internal/HTTPHelper;->eulaUrl:Ljava/lang/String;

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    sput-object p0, Lcom/revmob/internal/HTTPHelper;->eulaUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setEulaVersion(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    const-string v0, "default"

    sput-object v0, Lcom/revmob/internal/HTTPHelper;->eulaVersion:Ljava/lang/String;

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    sput-object p0, Lcom/revmob/internal/HTTPHelper;->eulaVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setIpAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    sput-object p0, Lcom/revmob/internal/HTTPHelper;->ipAddress:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static setShouldContinueOnBackground(Z)V
    .locals 0

    .prologue
    .line 305
    sput-boolean p0, Lcom/revmob/internal/HTTPHelper;->shouldContinueOnBackground:Z

    .line 306
    return-void
.end method

.method public static setShouldExtractGeolocation(Z)V
    .locals 0

    .prologue
    .line 297
    sput-boolean p0, Lcom/revmob/internal/HTTPHelper;->shouldExtractGeolocation:Z

    .line 298
    return-void
.end method

.method public static setShouldExtractOtherAppsData(Z)V
    .locals 0

    .prologue
    .line 301
    sput-boolean p0, Lcom/revmob/internal/HTTPHelper;->shouldExtractOtherAppsData:Z

    .line 302
    return-void
.end method

.method public static setShouldExtractSocial(Z)V
    .locals 0

    .prologue
    .line 293
    sput-boolean p0, Lcom/revmob/internal/HTTPHelper;->shouldExtractSocial:Z

    .line 294
    return-void
.end method

.method public static setShouldShowEula(ZLandroid/app/Activity;)V
    .locals 1

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    const/4 v0, 0x0

    sput-boolean v0, Lcom/revmob/internal/HTTPHelper;->shouldShowEula:Z

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    sput-boolean p0, Lcom/revmob/internal/HTTPHelper;->shouldShowEula:Z

    goto :goto_0
.end method

.method public static setUserAgent(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 55
    if-eqz p1, :cond_1

    .line 56
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/revmob/internal/HTTPHelper;->userAgent:Ljava/lang/String;

    .line 58
    :try_start_0
    invoke-static {}, Lcom/revmob/internal/AndroidHelper;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/revmob/internal/HTTPHelper;->userAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    sput-object p0, Lcom/revmob/internal/HTTPHelper;->userAgent:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public downloadBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 260
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 261
    if-nez p2, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lcom/revmob/internal/HTTPHelper;->getImageSize(Ljava/lang/String;)[I

    move-result-object v0

    .line 275
    :goto_0
    invoke-static {}, Lcom/revmob/android/RevMobScreen;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/revmob/android/RevMobScreen;->getScreenHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/revmob/internal/HTTPHelper;->calculateInSampleSize([III)I

    move-result v0

    .line 277
    invoke-virtual {p0, p1}, Lcom/revmob/internal/HTTPHelper;->getAndReturnTheStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 278
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 279
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    return-object v0

    .line 265
    :cond_0
    :try_start_0
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 266
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    .line 267
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    const/16 v1, 0x140

    aput v1, v0, v4

    .line 270
    const/16 v1, 0x32

    aput v1, v0, v5

    goto :goto_0
.end method

.method public downloadHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/revmob/internal/HTTPHelper;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/HTTPHelper;->encodedResponseBody(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public downloadImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/revmob/internal/HTTPHelper;->getAndReturnTheStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 228
    const-string v1, "src"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending GET to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 100
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/revmob/internal/HTTPHelper;->sendRequestDealingWithSSLErrors(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "Unknown error"

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAndReturnTheStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/revmob/internal/HTTPHelper;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v0, "Read error."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    const-string v0, "Read error."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getImageSize(Ljava/lang/String;)[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 232
    invoke-virtual {p0, p1}, Lcom/revmob/internal/HTTPHelper;->getAndReturnTheStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 233
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 234
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 235
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 236
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 237
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 239
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    aput v1, v0, v4

    return-object v0

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 3

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending POST to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/revmob/internal/HTTPHelper;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.useragent"

    sget-object v2, Lcom/revmob/internal/HTTPHelper;->userAgent:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 115
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/revmob/RevMobConstants;->ENCRYPTION:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "Content-type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "x-revmob-crypt"

    sget-object v2, Lcom/revmob/RevMobConstants;->REVMOB_ENCRYPTION_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/revmob/internal/RevMobEncryption;

    invoke-direct {v1}, Lcom/revmob/internal/RevMobEncryption;-><init>()V

    .line 120
    invoke-virtual {v1, p2}, Lcom/revmob/internal/RevMobEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 125
    :goto_0
    const-string v1, "User-Agent"

    sget-object v2, Lcom/revmob/internal/HTTPHelper;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/revmob/internal/HTTPHelper;->sendRequestDealingWithSSLErrors(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 141
    :goto_1
    return-object v0

    .line 123
    :cond_0
    const-string v1, "Content-type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v1, "Encoding error."

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 137
    :catch_1
    move-exception v0

    .line 139
    const-string v1, "Unknown error"

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setTimeout(I)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/revmob/internal/HTTPHelper;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 95
    return-void
.end method
