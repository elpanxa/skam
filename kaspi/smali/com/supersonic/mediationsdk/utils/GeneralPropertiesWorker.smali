.class public Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;
.super Ljava/lang/Object;
.source "GeneralPropertiesWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"


# instance fields
.field private final ADVERTISING_ID:Ljava/lang/String;

.field private final ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

.field private final ANDROID_OS_VERSION:Ljava/lang/String;

.field private final APPLICATION_KEY:Ljava/lang/String;

.field private final BATTERY_LEVEL:Ljava/lang/String;

.field private final BUNDLE_ID:Ljava/lang/String;

.field private final CONNECTION_TYPE:Ljava/lang/String;

.field private final DEVICE_MODEL:Ljava/lang/String;

.field private final DEVICE_OEM:Ljava/lang/String;

.field private final DEVICE_OS:Ljava/lang/String;

.field private final EXTERNAL_FREE_MEMORY:Ljava/lang/String;

.field private final INTERNAL_FREE_MEMORY:Ljava/lang/String;

.field private final KEY_PLUGIN_TYPE:Ljava/lang/String;

.field private final KEY_PLUGIN_VERSION:Ljava/lang/String;

.field private final KEY_SESSION_ID:Ljava/lang/String;

.field private final LANGUAGE:Ljava/lang/String;

.field private final LOCATION_LAT:Ljava/lang/String;

.field private final LOCATION_LON:Ljava/lang/String;

.field private final MOBILE_CARRIER:Ljava/lang/String;

.field private final PUBLISHER_APP_VERSION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TIME_ZONE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "bundleId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->BUNDLE_ID:Ljava/lang/String;

    .line 49
    const-string v0, "advertisingId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID:Ljava/lang/String;

    .line 50
    const-string v0, "isLimitAdTrackingEnabled"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

    .line 51
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->APPLICATION_KEY:Ljava/lang/String;

    .line 52
    const-string v0, "deviceOS"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OS:Ljava/lang/String;

    .line 53
    const-string v0, "osVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ANDROID_OS_VERSION:Ljava/lang/String;

    .line 54
    const-string v0, "connectionType"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->CONNECTION_TYPE:Ljava/lang/String;

    .line 56
    const-string v0, "language"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LANGUAGE:Ljava/lang/String;

    .line 57
    const-string v0, "deviceOEM"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OEM:Ljava/lang/String;

    .line 58
    const-string v0, "deviceModel"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_MODEL:Ljava/lang/String;

    .line 59
    const-string v0, "mobileCarrier"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->MOBILE_CARRIER:Ljava/lang/String;

    .line 60
    const-string v0, "externalFreeMemory"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->EXTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 61
    const-string v0, "internalFreeMemory"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->INTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 62
    const-string v0, "battery"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->BATTERY_LEVEL:Ljava/lang/String;

    .line 63
    const-string v0, "lat"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LAT:Ljava/lang/String;

    .line 64
    const-string v0, "lon"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LON:Ljava/lang/String;

    .line 65
    const-string v0, "timeZone"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TIME_ZONE:Ljava/lang/String;

    .line 66
    const-string v0, "appVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->PUBLISHER_APP_VERSION:Ljava/lang/String;

    .line 67
    const-string v0, "sessionId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_SESSION_ID:Ljava/lang/String;

    .line 68
    const-string v0, "pluginType"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_TYPE:Ljava/lang/String;

    .line 69
    const-string v0, "pluginVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_VERSION:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "bundleId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->BUNDLE_ID:Ljava/lang/String;

    .line 49
    const-string v0, "advertisingId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID:Ljava/lang/String;

    .line 50
    const-string v0, "isLimitAdTrackingEnabled"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

    .line 51
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->APPLICATION_KEY:Ljava/lang/String;

    .line 52
    const-string v0, "deviceOS"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OS:Ljava/lang/String;

    .line 53
    const-string v0, "osVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ANDROID_OS_VERSION:Ljava/lang/String;

    .line 54
    const-string v0, "connectionType"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->CONNECTION_TYPE:Ljava/lang/String;

    .line 56
    const-string v0, "language"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LANGUAGE:Ljava/lang/String;

    .line 57
    const-string v0, "deviceOEM"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OEM:Ljava/lang/String;

    .line 58
    const-string v0, "deviceModel"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_MODEL:Ljava/lang/String;

    .line 59
    const-string v0, "mobileCarrier"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->MOBILE_CARRIER:Ljava/lang/String;

    .line 60
    const-string v0, "externalFreeMemory"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->EXTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 61
    const-string v0, "internalFreeMemory"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->INTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 62
    const-string v0, "battery"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->BATTERY_LEVEL:Ljava/lang/String;

    .line 63
    const-string v0, "lat"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LAT:Ljava/lang/String;

    .line 64
    const-string v0, "lon"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LON:Ljava/lang/String;

    .line 65
    const-string v0, "timeZone"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TIME_ZONE:Ljava/lang/String;

    .line 66
    const-string v0, "appVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->PUBLISHER_APP_VERSION:Ljava/lang/String;

    .line 67
    const-string v0, "sessionId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_SESSION_ID:Ljava/lang/String;

    .line 68
    const-string v0, "pluginType"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_TYPE:Ljava/lang/String;

    .line 69
    const-string v0, "pluginVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_VERSION:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private collectInformation()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    const-string v1, ""

    .line 105
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->generateUUID()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    const-string v2, "sessionId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getBundleId()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    const-string v2, "bundleId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getPublisherApplicationVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    const-string v2, "appVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    const-string v1, "appKey"

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getAdvertisingIdInfo()[Ljava/lang/String;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_2

    array-length v2, v1

    if-ne v2, v5, :cond_2

    .line 127
    const-string v2, "advertisingId"

    aget-object v3, v1, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v2, "isLimitAdTrackingEnabled"

    aget-object v1, v1, v6

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_2
    const-string v1, "deviceOS"

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceOS()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    const-string v1, "osVersion"

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 139
    const-string v2, "connectionType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_4
    const-string v1, "sdkVersion"

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 145
    const-string v2, "language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_5
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceOEM()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 149
    const-string v2, "deviceOEM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_6
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 153
    const-string v2, "deviceModel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_7
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getMobileCarrier()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 157
    const-string v2, "mobileCarrier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_8
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getInternalStorageFreeSize()J

    move-result-wide v2

    .line 160
    const-string v1, "internalFreeMemory"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getExternalStorageFreeSize()J

    move-result-wide v2

    .line 163
    const-string v1, "externalFreeMemory"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getBatteryLevel()I

    move-result v1

    .line 167
    const-string v2, "battery"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getLastKnownLocation()[D

    move-result-object v1

    .line 171
    if-eqz v1, :cond_9

    array-length v2, v1

    if-ne v2, v5, :cond_9

    .line 172
    const-string v2, "lat"

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v2, "lon"

    aget-wide v4, v1, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_9
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 179
    const-string v2, "timeZone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_a
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getPluginType()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 183
    const-string v2, "pluginType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_b
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getPluginVersion()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 187
    const-string v2, "pluginVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_c
    return-object v0
.end method

.method private generateUUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 611
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    return-object v0
.end method

.method private getAdvertisingIdInfo()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 253
    const-string v0, "unknown"

    .line 257
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 259
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 260
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isLimitAdTrackingEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 265
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 268
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 283
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v3, "getAdvertisingIdInfo()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    :cond_0
    :goto_1
    new-array v0, v5, [Ljava/lang/String;

    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    .line 274
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v3, "getAdvertisingIdInfo()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 275
    :catch_2
    move-exception v0

    .line 276
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v3, "getAdvertisingIdInfo()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 277
    :catch_3
    move-exception v0

    .line 278
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v3, "getAdvertisingIdInfo()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 279
    :catch_4
    move-exception v0

    .line 280
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v3, "getAdvertisingIdInfo()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getAndroidVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 321
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string v0, ""

    goto :goto_0
.end method

.method private getApplicationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBatteryLevel()I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 495
    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 499
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 500
    const-string v3, "scale"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 503
    if-eq v2, v0, :cond_0

    if-eq v1, v0, :cond_0

    .line 504
    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 511
    :cond_0
    :goto_0
    return v0

    .line 507
    :catch_0
    move-exception v1

    .line 508
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":getBatteryLevel()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v0, ""

    goto :goto_0
.end method

.method private getConnectionType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 334
    const-string v1, ""

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 338
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 340
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 345
    if-nez v2, :cond_1

    .line 347
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 351
    const-string v0, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":getConnectionType()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-object v0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string v0, ""

    goto :goto_0
.end method

.method private getDeviceOEM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-object v0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    const-string v0, ""

    goto :goto_0
.end method

.method private getDeviceOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const-string v0, "Android"

    return-object v0
.end method

.method private getExternalStorageFreeSize()J
    .locals 4

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->isExternalStorageAbvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 477
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 482
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 483
    mul-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    .line 485
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getInternalStorageFreeSize()J
    .locals 4

    .prologue
    .line 455
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 456
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 461
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 463
    mul-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    return-wide v0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    const-string v0, ""

    goto :goto_0
.end method

.method private getLastKnownLocation()[D
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 520
    new-array v6, v10, [D

    .line 521
    const-wide/high16 v4, -0x8000000000000000L

    .line 526
    :try_start_0
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->locationPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 531
    const/4 v2, 0x0

    .line 533
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 534
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 537
    if-eqz v1, :cond_2

    .line 539
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    .line 540
    cmp-long v3, v8, v4

    if-lez v3, :cond_2

    .line 542
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    :goto_1
    move-wide v4, v2

    move-object v2, v1

    .line 546
    goto :goto_0

    .line 548
    :cond_0
    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 550
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 552
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_2
    return-object v0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":getLastLocation()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    new-array v0, v10, [D

    goto :goto_2

    :cond_1
    move-object v0, v6

    goto :goto_2

    :cond_2
    move-object v1, v2

    move-wide v2, v4

    goto :goto_1
.end method

.method private getMobileCarrier()Ljava/lang/String;
    .locals 6

    .prologue
    .line 418
    const-string v1, ""

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 424
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 431
    :goto_0
    return-object v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":getMobileCarrier()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getPluginType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    const-string v0, ""

    .line 212
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v4, "getPluginType()"

    invoke-virtual {v2, v3, v4, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPluginVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    const-string v0, ""

    .line 223
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v4, "getPluginVersion()"

    invoke-virtual {v2, v3, v4, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPublisherApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    const-string v0, ""

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeZone()Ljava/lang/String;
    .locals 5

    .prologue
    .line 585
    const-string v0, ""

    .line 588
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 589
    invoke-static {v0}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 590
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 592
    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x36ee80

    div-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0xea60

    div-int v4, v0, v4

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v0, :cond_0

    const-string v0, "+"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_1
    return-object v0

    .line 593
    :cond_0
    const-string v0, "-"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    const-string v0, ""

    goto :goto_1
.end method

.method private isExternalStorageAbvailable()Z
    .locals 2

    .prologue
    .line 441
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 444
    :goto_0
    return v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private locationPermissionGranted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 571
    :try_start_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 572
    iget-object v2, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 573
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 575
    :cond_0
    :goto_0
    return v0

    .line 574
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->collectInformation()Ljava/util/Map;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKeys(Ljava/util/Map;)V

    .line 88
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveGeneralProperties(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
