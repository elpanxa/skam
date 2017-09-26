.class public Lcom/adsdk/sdk/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final MINIMAL_ACCURACY:F = 1000.0f

.field private static final MINIMAL_TIME_FROM_FIX:J = 0x124f80L

.field private static adDoNotTrack:Z

.field private static androidAdId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsdk/sdk/Util;->adDoNotTrack:Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    sput-object p0, Lcom/adsdk/sdk/Util;->androidAdId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 37
    sput-boolean p0, Lcom/adsdk/sdk/Util;->adDoNotTrack:Z

    return-void
.end method

.method public static buildUserAgent()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 189
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 190
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 191
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 192
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 193
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 194
    const-string v0, "en"

    .line 195
    if-eqz v5, :cond_0

    .line 196
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 198
    if-eqz v4, :cond_0

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_0
    const-string v4, "Mozilla/5.0 (Linux; U; Android %1$s; %2$s; %3$s Build/%4$s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public static getAndroidAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/adsdk/sdk/Util;->androidAdId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 250
    const-string v0, ""

    .line 252
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adsdk/sdk/Util;->androidAdId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    const-string v0, "UNKNOWN"

    .line 122
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 78
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 79
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 80
    const-string v0, "WIFI"

    goto :goto_0

    .line 81
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 82
    const-string v0, "WIMAX"

    goto :goto_0

    .line 83
    :cond_2
    if-nez v1, :cond_3

    .line 84
    packed-switch v0, :pswitch_data_0

    .line 116
    const-string v0, "MOBILE"

    goto :goto_0

    .line 86
    :pswitch_0
    const-string v0, "1xRTT"

    goto :goto_0

    .line 88
    :pswitch_1
    const-string v0, "CDMA"

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    .line 92
    :pswitch_3
    const-string v0, "EVDO_0"

    goto :goto_0

    .line 94
    :pswitch_4
    const-string v0, "EVDO_A"

    goto :goto_0

    .line 96
    :pswitch_5
    const-string v0, "GPRS"

    goto :goto_0

    .line 98
    :pswitch_6
    const-string v0, "UMTS"

    goto :goto_0

    .line 100
    :pswitch_7
    const-string v0, "EHRPD"

    goto :goto_0

    .line 102
    :pswitch_8
    const-string v0, "EVDO_B"

    goto :goto_0

    .line 104
    :pswitch_9
    const-string v0, "HSDPA"

    goto :goto_0

    .line 106
    :pswitch_a
    const-string v0, "HSPA"

    goto :goto_0

    .line 108
    :pswitch_b
    const-string v0, "HSPAP"

    goto :goto_0

    .line 110
    :pswitch_c
    const-string v0, "HSUPA"

    goto :goto_0

    .line 112
    :pswitch_d
    const-string v0, "IDEN"

    goto :goto_0

    .line 114
    :pswitch_e
    const-string v0, "LTE"

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 122
    :cond_4
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_8
        :pswitch_e
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public static getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    return-object v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 129
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 130
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 132
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    .line 133
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 12

    .prologue
    const-wide/32 v10, 0x124f80

    const/4 v1, 0x0

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 144
    .line 147
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    move v2, v0

    .line 154
    :goto_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 156
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 159
    if-nez v2, :cond_2

    move-object v0, v3

    .line 179
    :cond_0
    :goto_1
    return-object v0

    .line 150
    :cond_1
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    move v2, v1

    move v1, v0

    .line 151
    goto :goto_0

    .line 163
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 164
    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    cmp-long v4, v4, v10

    if-gez v4, :cond_3

    move-object v0, v2

    .line 165
    goto :goto_1

    .line 168
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 169
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 171
    if-nez v0, :cond_4

    move-object v0, v3

    .line 172
    goto :goto_1

    .line 174
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 175
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v1, v1, v8

    if-gez v1, :cond_5

    cmp-long v1, v4, v10

    if-ltz v1, :cond_0

    :cond_5
    move-object v0, v3

    .line 179
    goto :goto_1

    :cond_6
    move v2, v1

    goto/16 :goto_0
.end method

.method public static getMemoryClass(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 209
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getMemoryClass"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 210
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 211
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static hasAdDoNotTrack()Z
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/adsdk/sdk/Util;->adDoNotTrack:Z

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 48
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    move v0, v1

    .line 64
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 58
    if-eq v3, v2, :cond_1

    if-nez v3, :cond_2

    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 61
    goto :goto_0

    :cond_3
    move v0, v2

    .line 64
    goto :goto_0
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 260
    .line 262
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const/4 v0, 0x0

    .line 266
    const-string v1, "Decoding bitmap failed!"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static prepareAndroidAdId(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/adsdk/sdk/Util;->androidAdId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/adsdk/sdk/Util$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/Util$1;-><init>(Landroid/content/Context;)V

    .line 244
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    :cond_0
    return-void
.end method
