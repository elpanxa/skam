.class public Lcom/crashlytics/android/beta/Beta;
.super Lio/fabric/sdk/android/Kit;
.source "Beta.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/DeviceIdentifierProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/fabric/sdk/android/services/common/DeviceIdentifierProvider;"
    }
.end annotation


# static fields
.field private static final CRASHLYTICS_API_ENDPOINT:Ljava/lang/String; = "com.crashlytics.ApiEndpoint"

.field private static final CRASHLYTICS_BUILD_PROPERTIES:Ljava/lang/String; = "crashlytics-build.properties"

.field static final NO_DEVICE_TOKEN:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "Beta"


# instance fields
.field private final deviceTokenCache:Lio/fabric/sdk/android/services/cache/MemoryValueCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/cache/MemoryValueCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceTokenLoader:Lcom/crashlytics/android/beta/DeviceTokenLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 37
    new-instance v0, Lio/fabric/sdk/android/services/cache/MemoryValueCache;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/cache/MemoryValueCache;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenCache:Lio/fabric/sdk/android/services/cache/MemoryValueCache;

    .line 38
    new-instance v0, Lcom/crashlytics/android/beta/DeviceTokenLoader;

    invoke-direct {v0}, Lcom/crashlytics/android/beta/DeviceTokenLoader;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenLoader:Lcom/crashlytics/android/beta/DeviceTokenLoader;

    return-void
.end method

.method private checkForUpdates(Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/settings/BetaSettingsData;Lcom/crashlytics/android/beta/BuildProperties;)V
    .locals 9

    .prologue
    .line 104
    new-instance v0, Lcom/crashlytics/android/beta/CheckForUpdatesController;

    new-instance v6, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    const-class v1, Lcom/crashlytics/android/beta/Beta;

    invoke-static {v1}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v1

    invoke-direct {v6, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    new-instance v7, Lio/fabric/sdk/android/services/common/SystemCurrentTimeProvider;

    invoke-direct {v7}, Lio/fabric/sdk/android/services/common/SystemCurrentTimeProvider;-><init>()V

    new-instance v8, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    invoke-direct {v8, v1}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;-><init>(Lio/fabric/sdk/android/Logger;)V

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/crashlytics/android/beta/CheckForUpdatesController;-><init>(Landroid/content/Context;Lcom/crashlytics/android/beta/Beta;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/settings/BetaSettingsData;Lcom/crashlytics/android/beta/BuildProperties;Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    invoke-virtual {v0}, Lcom/crashlytics/android/beta/CheckForUpdatesController;->checkForUpdates()V

    .line 114
    return-void
.end method

.method private getBetaDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 136
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p2, v0}, Lcom/crashlytics/android/beta/Beta;->isAppPossiblyInstalledByBeta(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v2, "Beta"

    const-string v3, "App was installed by Beta. Getting device token"

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenCache:Lio/fabric/sdk/android/services/cache/MemoryValueCache;

    iget-object v2, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenLoader:Lcom/crashlytics/android/beta/DeviceTokenLoader;

    invoke-virtual {v0, p1, v2}, Lio/fabric/sdk/android/services/cache/MemoryValueCache;->get(Landroid/content/Context;Lio/fabric/sdk/android/services/cache/ValueLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    move-object v1, v0

    .line 150
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Failed to load the Beta device token"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v2, "Beta"

    const-string v3, "App was not installed by Beta. Skipping device token"

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBetaSettingsData()Lio/fabric/sdk/android/services/settings/BetaSettingsData;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/SettingsData;->betaSettingsData:Lio/fabric/sdk/android/services/settings/BetaSettingsData;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/crashlytics/android/beta/Beta;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/crashlytics/android/beta/Beta;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/beta/Beta;

    return-object v0
.end method

.method private loadBuildProperties(Landroid/content/Context;)Lcom/crashlytics/android/beta/BuildProperties;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 164
    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "crashlytics-build.properties"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 170
    if-eqz v2, :cond_2

    .line 171
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/beta/BuildProperties;->fromPropertiesStream(Ljava/io/InputStream;)Lcom/crashlytics/android/beta/BuildProperties;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 173
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v3, "Beta"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/crashlytics/android/beta/BuildProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " build properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/beta/BuildProperties;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/beta/BuildProperties;->versionCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/beta/BuildProperties;->buildId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 180
    :goto_0
    if-eqz v2, :cond_0

    .line 182
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 189
    :cond_0
    :goto_1
    return-object v0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 177
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 178
    :goto_2
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "Beta"

    const-string v5, "Error reading Beta build properties"

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    if-eqz v2, :cond_0

    .line 182
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 183
    :catch_2
    move-exception v1

    .line 184
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 180
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    .line 182
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 185
    :cond_1
    :goto_4
    throw v0

    .line 183
    :catch_3
    move-exception v1

    .line 184
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 180
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 177
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method canCheckForUpdates(Lio/fabric/sdk/android/services/settings/BetaSettingsData;Lcom/crashlytics/android/beta/BuildProperties;)Z
    .locals 1

    .prologue
    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p1, Lio/fabric/sdk/android/services/settings/BetaSettingsData;->updateUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doInBackground()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta kit initializing..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/beta/Beta;->getBetaDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "A Beta device token was not found for this app"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Beta device token is present, checking for app updates."

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/crashlytics/android/beta/Beta;->getBetaSettingsData()Lio/fabric/sdk/android/services/settings/BetaSettingsData;

    move-result-object v2

    .line 64
    invoke-direct {p0, v0}, Lcom/crashlytics/android/beta/Beta;->loadBuildProperties(Landroid/content/Context;)Lcom/crashlytics/android/beta/BuildProperties;

    move-result-object v3

    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/crashlytics/android/beta/Beta;->canCheckForUpdates(Lio/fabric/sdk/android/services/settings/BetaSettingsData;Lcom/crashlytics/android/beta/BuildProperties;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/crashlytics/android/beta/Beta;->checkForUpdates(Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/settings/BetaSettingsData;Lcom/crashlytics/android/beta/BuildProperties;)V

    .line 70
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdentifiers()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/beta/Beta;->getBetaDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    sget-object v2, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    return-object v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "1.1.2.37"

    return-object v0
.end method

.method isAppPossiblyInstalledByBeta(Ljava/lang/String;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 118
    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    .line 122
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "io.crash.air"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
