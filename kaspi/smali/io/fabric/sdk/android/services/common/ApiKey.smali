.class public Lio/fabric/sdk/android/services/common/ApiKey;
.super Ljava/lang/Object;
.source "ApiKey.java"


# static fields
.field static final CRASHLYTICS_API_KEY:Ljava/lang/String; = "com.crashlytics.ApiKey"

.field static final FABRIC_API_KEY:Ljava/lang/String; = "io.fabric.ApiKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "getApiKey(context) is deprecated, please upgrade kit(s) to the latest version."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    invoke-virtual {v0, p0}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApiKey(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "getApiKey(context, debug) is deprecated, please upgrade kit(s) to the latest version."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    invoke-virtual {v0, p0}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildApiKeyInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    return-object v0
.end method

.method protected getApiKeyFromManifest(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 56
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 57
    if-eqz v1, :cond_0

    .line 58
    const-string v2, "io.fabric.ApiKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Falling back to Crashlytics key lookup from Manifest"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "com.crashlytics.ApiKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    .line 69
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught non-fatal exception while retrieving apiKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getApiKeyFromStrings(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    const-string v1, "io.fabric.ApiKey"

    const-string v2, "string"

    invoke-static {p1, v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 80
    if-nez v1, :cond_0

    .line 81
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Falling back to Crashlytics key lookup from Strings"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "com.crashlytics.ApiKey"

    const-string v2, "string"

    invoke-static {p1, v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 85
    :cond_0
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    return-object v0
.end method

.method public getValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/ApiKey;->getApiKeyFromManifest(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/ApiKey;->getApiKeyFromStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/ApiKey;->logErrorOrThrowException(Landroid/content/Context;)V

    .line 47
    :cond_1
    return-object v0
.end method

.method protected logErrorOrThrowException(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->isAppDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/ApiKey;->buildApiKeyInstructions()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/ApiKey;->buildApiKeyInstructions()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
