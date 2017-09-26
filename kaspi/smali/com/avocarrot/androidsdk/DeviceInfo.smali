.class public Lcom/avocarrot/androidsdk/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/DeviceInfo$AdvertisingIdTask;
    }
.end annotation


# static fields
.field static AVOCARROT_UUID:Ljava/lang/String;

.field static advertisingInfoId:Ljava/lang/String;

.field static hasRequestedAdvertisingId:Z

.field static isLimitAdTrackingEnabled:Z

.field static uuid:Ljava/lang/String;


# instance fields
.field appName:Ljava/lang/String;

.field connectivityManager:Landroid/net/ConnectivityManager;

.field language:Ljava/lang/String;

.field lastKnownLocation:Landroid/location/Location;

.field mcc:Ljava/lang/String;

.field mnc:Ljava/lang/String;

.field networkOperatorName:Ljava/lang/String;

.field orientation:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field screenHeight:I

.field screenWidth:I

.field simCountryIso:Ljava/lang/String;

.field versionName:Ljava/lang/String;

.field weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    const-string v0, "AvocarrotUUID"

    sput-object v0, Lcom/avocarrot/androidsdk/DeviceInfo;->AVOCARROT_UUID:Ljava/lang/String;

    .line 48
    sput-boolean v1, Lcom/avocarrot/androidsdk/DeviceInfo;->hasRequestedAdvertisingId:Z

    .line 51
    sput-boolean v1, Lcom/avocarrot/androidsdk/DeviceInfo;->isLimitAdTrackingEnabled:Z

    .line 52
    sput-object v2, Lcom/avocarrot/androidsdk/DeviceInfo;->advertisingInfoId:Ljava/lang/String;

    .line 53
    sput-object v2, Lcom/avocarrot/androidsdk/DeviceInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->packageName:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->appName:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->versionName:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->networkOperatorName:Ljava/lang/String;

    .line 41
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->mcc:Ljava/lang/String;

    .line 42
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->mnc:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->simCountryIso:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->lastKnownLocation:Landroid/location/Location;

    .line 45
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->language:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 61
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->weakContext:Ljava/lang/ref/WeakReference;

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->weakContext:Ljava/lang/ref/WeakReference;

    .line 68
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 69
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->lastKnownLocation:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->connectivityManager:Landroid/net/ConnectivityManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    .line 79
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 82
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 85
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->appName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 88
    :goto_4
    :try_start_5
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 89
    :try_start_6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->networkOperatorName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 91
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 93
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->mcc:Ljava/lang/String;

    .line 94
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->mnc:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 97
    :cond_1
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->simCountryIso:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 100
    :goto_7
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->language:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 104
    :goto_8
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 105
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->screenWidth:I

    .line 106
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->screenHeight:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 110
    :goto_9
    :try_start_b
    invoke-direct {p0, p1}, Lcom/avocarrot/androidsdk/DeviceInfo;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->orientation:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 113
    :goto_a
    sget-object v0, Lcom/avocarrot/androidsdk/DeviceInfo;->advertisingInfoId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 115
    new-instance v0, Lcom/avocarrot/androidsdk/DeviceInfo$AdvertisingIdTask;

    invoke-direct {v0, p0, p1}, Lcom/avocarrot/androidsdk/DeviceInfo$AdvertisingIdTask;-><init>(Lcom/avocarrot/androidsdk/DeviceInfo;Landroid/content/Context;)V

    sget-object v1, Lcom/avocarrot/androidsdk/Avocarrot;->Executor:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/avocarrot/androidsdk/DeviceInfo$AdvertisingIdTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    :cond_2
    :goto_b
    sget-object v0, Lcom/avocarrot/androidsdk/DeviceInfo;->AVOCARROT_UUID:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_3

    .line 123
    sget-object v1, Lcom/avocarrot/androidsdk/DeviceInfo;->AVOCARROT_UUID:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    sget-object v1, Lcom/avocarrot/androidsdk/DeviceInfo;->AVOCARROT_UUID:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avocarrot/androidsdk/DeviceInfo;->uuid:Ljava/lang/String;

    .line 131
    :cond_3
    :goto_c
    sget-object v0, Lcom/avocarrot/androidsdk/DeviceInfo;->uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TMP-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avocarrot/androidsdk/DeviceInfo;->uuid:Ljava/lang/String;

    .line 134
    :cond_4
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    iput-object v3, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->lastKnownLocation:Landroid/location/Location;

    goto/16 :goto_0

    .line 117
    :cond_5
    new-instance v0, Lcom/avocarrot/androidsdk/DeviceInfo$AdvertisingIdTask;

    invoke-direct {v0, p0, p1}, Lcom/avocarrot/androidsdk/DeviceInfo$AdvertisingIdTask;-><init>(Lcom/avocarrot/androidsdk/DeviceInfo;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/DeviceInfo$AdvertisingIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b

    .line 126
    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/avocarrot/androidsdk/DeviceInfo;->uuid:Ljava/lang/String;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/avocarrot/androidsdk/DeviceInfo;->AVOCARROT_UUID:Ljava/lang/String;

    sget-object v2, Lcom/avocarrot/androidsdk/DeviceInfo;->uuid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    .line 111
    :catch_1
    move-exception v0

    goto/16 :goto_a

    .line 107
    :catch_2
    move-exception v0

    goto/16 :goto_9

    .line 101
    :catch_3
    move-exception v0

    goto/16 :goto_8

    .line 98
    :catch_4
    move-exception v0

    goto/16 :goto_7

    .line 97
    :catch_5
    move-exception v0

    goto/16 :goto_7

    .line 96
    :catch_6
    move-exception v1

    goto/16 :goto_6

    .line 89
    :catch_7
    move-exception v1

    goto/16 :goto_5

    .line 86
    :catch_8
    move-exception v0

    goto/16 :goto_4

    .line 83
    :catch_9
    move-exception v0

    goto/16 :goto_3

    .line 80
    :catch_a
    move-exception v0

    goto/16 :goto_2

    .line 77
    :catch_b
    move-exception v0

    goto/16 :goto_1
.end method

.method private getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    const-string v0, ""

    .line 310
    :goto_0
    return-object v0

    .line 305
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 306
    packed-switch v0, :pswitch_data_0

    .line 310
    const-string v0, ""

    goto :goto_0

    .line 307
    :pswitch_0
    const-string v0, "LANDSCAPE"

    goto :goto_0

    .line 308
    :pswitch_1
    const-string v0, "PORTRAIT"

    goto :goto_0

    .line 309
    :pswitch_2
    const-string v0, "UNDEFINED"

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/avocarrot/androidsdk/DeviceInfo;->advertisingInfoId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->networkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestedAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avocarrot/androidsdk/Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnt()Z
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Lcom/avocarrot/androidsdk/DeviceInfo;->isLimitAdTrackingEnabled:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->lastKnownLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenRTBConnectionType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    :cond_0
    const-string v0, "0"

    .line 287
    :goto_0
    return-object v0

    .line 259
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 260
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 261
    const-string v0, "2"

    goto :goto_0

    .line 262
    :cond_2
    if-nez v1, :cond_3

    .line 263
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    const-string v0, "3"

    goto :goto_0

    .line 269
    :pswitch_0
    const-string v0, "4"

    goto :goto_0

    .line 279
    :pswitch_1
    const-string v0, "5"

    goto :goto_0

    .line 281
    :pswitch_2
    const-string v0, "6"

    goto :goto_0

    .line 287
    :cond_3
    const-string v0, "0"

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->weakContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->orientation:Ljava/lang/String;

    .line 298
    :goto_0
    return-object v0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/avocarrot/androidsdk/DeviceInfo;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->orientation:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->orientation:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, "Android"

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->screenWidth:I

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->simCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getUA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/avocarrot/androidsdk/DeviceInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DeviceInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public requestAdvertisingIdNotInUIThread(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 164
    sget-boolean v0, Lcom/avocarrot/androidsdk/DeviceInfo;->hasRequestedAdvertisingId:Z

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 168
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/avocarrot/androidsdk/DeviceInfo;->advertisingInfoId:Ljava/lang/String;

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/avocarrot/androidsdk/DeviceInfo;->isLimitAdTrackingEnabled:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    sput-boolean v4, Lcom/avocarrot/androidsdk/DeviceInfo;->hasRequestedAdvertisingId:Z

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_1
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Google play Services: IOException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    sput-boolean v4, Lcom/avocarrot/androidsdk/DeviceInfo;->hasRequestedAdvertisingId:Z

    goto :goto_0

    .line 173
    :catch_1
    move-exception v0

    .line 174
    :try_start_2
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Google play Services: GooglePlayServicesNotAvailableException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    sput-boolean v4, Lcom/avocarrot/androidsdk/DeviceInfo;->hasRequestedAdvertisingId:Z

    goto :goto_0

    .line 175
    :catch_2
    move-exception v0

    .line 176
    :try_start_3
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Google play Services: GooglePlayServicesRepairableException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    sput-boolean v4, Lcom/avocarrot/androidsdk/DeviceInfo;->hasRequestedAdvertisingId:Z

    goto :goto_0

    .line 177
    :catch_3
    move-exception v0

    .line 178
    :try_start_4
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Google play Services: IllegalStateException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    sput-boolean v4, Lcom/avocarrot/androidsdk/DeviceInfo;->hasRequestedAdvertisingId:Z

    goto :goto_0

    .line 179
    :catch_4
    move-exception v0

    .line 180
    :try_start_5
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Google play Services"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    sput-boolean v4, Lcom/avocarrot/androidsdk/DeviceInfo;->hasRequestedAdvertisingId:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v4, Lcom/avocarrot/androidsdk/DeviceInfo;->hasRequestedAdvertisingId:Z

    throw v0
.end method
