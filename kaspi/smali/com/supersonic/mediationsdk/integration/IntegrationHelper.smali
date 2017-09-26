.class public Lcom/supersonic/mediationsdk/integration/IntegrationHelper;
.super Ljava/lang/Object;
.source "IntegrationHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntegrationHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static validateActivities(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 188
    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 191
    const-string v1, "IntegrationHelper"

    const-string v4, "*** Activities ***"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 196
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    const/high16 v5, 0x10000

    invoke-virtual {v3, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 200
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 201
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    :goto_2
    move v1, v0

    .line 210
    goto :goto_0

    .line 204
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_1

    .line 206
    :catch_0
    move-exception v1

    .line 208
    invoke-static {v0, v2}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    move v0, v2

    goto :goto_2

    .line 212
    :cond_1
    return v1
.end method

.method private static validateAdapter(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    .line 161
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :try_start_1
    const-string v2, "Adapter"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :goto_0
    return v0

    .line 165
    :catch_0
    move-exception v0

    move v0, v1

    .line 166
    :goto_1
    const-string v2, "Adapter"

    invoke-static {v2, v1}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 165
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static validateBroadcastReceivers(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 254
    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 257
    const-string v1, "IntegrationHelper"

    const-string v4, "*** Broadcast Receivers ***"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 262
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    const/high16 v5, 0x10000

    invoke-virtual {v3, v6, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 266
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 267
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    :goto_2
    move v1, v0

    .line 276
    goto :goto_0

    .line 270
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_1

    .line 272
    :catch_0
    move-exception v1

    .line 274
    invoke-static {v0, v2}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    move v0, v2

    goto :goto_2

    .line 278
    :cond_1
    return v1
.end method

.method private static validateExternalLibraries(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 235
    .line 237
    const-string v1, "IntegrationHelper"

    const-string v2, "*** External Libraries ***"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 241
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 243
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_1
    move v2, v0

    .line 248
    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 246
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    move v0, v3

    goto :goto_1

    .line 250
    :cond_0
    return v2
.end method

.method private static validateGooglePlayServices(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    const-string v0, "com.google.android.gms.version"

    .line 138
    const-string v0, "Google Play Services"

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 144
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 146
    const-string v1, "com.google.android.gms.version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const-string v0, "Google Play Services"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "Google Play Services"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v0, "Google Play Services"

    invoke-static {v0, v3}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static validateIntegration(Landroid/app/Activity;)V
    .locals 19

    .prologue
    .line 23
    const-string v2, "Supersonic"

    .line 24
    const-string v2, "AdColony"

    .line 25
    const-string v2, "AppLovin"

    .line 26
    const-string v2, "Chartboost"

    .line 27
    const-string v2, "Flurry"

    .line 28
    const-string v2, "HyprMX"

    .line 29
    const-string v2, "NativeX"

    .line 30
    const-string v2, "UnityAds"

    .line 31
    const-string v2, "Vungle"

    .line 32
    const-string v2, "InMobi"

    .line 34
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.permission.INTERNET"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 35
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.VIBRATE"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 37
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "com.supersonicads.sdk.controller.ControllerActivity"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "com.supersonicads.sdk.controller.InterstitialActivity"

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const-string v6, "com.supersonicads.sdk.controller.OpenUrlActivity"

    aput-object v6, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 38
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.jirbo.adcolony.AdColonyOverlay"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "com.jirbo.adcolony.AdColonyFullscreen"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "com.jirbo.adcolony.AdColonyBrowser"

    aput-object v7, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 39
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "com.applovin.adview.AppLovinInterstitialActivity"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "com.applovin.adview.AppLovinConfirmationActivity"

    aput-object v8, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 40
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.chartboost.sdk.CBImpressionActivity"

    aput-object v9, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 41
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "com.flurry.android.FlurryFullscreenTakeoverActivity"

    aput-object v10, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 42
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.supersonic.adapters.hyprmx.MediationHMXActivity"

    aput-object v11, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 43
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.nativex.monetization.activities.InterstitialActivity"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string v12, "com.nativex.videoplayer.VideoActivity"

    aput-object v12, v3, v11

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 44
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "com.vungle.publisher.FullScreenAdActivity"

    aput-object v13, v3, v12

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 45
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "com.inmobi.rendering.InMobiAdActivity"

    aput-object v14, v3, v13

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 47
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "com.inmobi.commons.core.utilities.uid.ImIdShareBroadCastReceiver"

    aput-object v15, v3, v14

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 49
    new-instance v15, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$1;

    invoke-direct {v15}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$1;-><init>()V

    .line 55
    new-instance v16, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$2;

    invoke-direct/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$2;-><init>()V

    .line 63
    const-string v3, "com.hyprmx.android.activities.HyprMXActivity"

    .line 64
    const-string v3, "com.unity3d.ads.android.UnityAds"

    .line 66
    new-instance v3, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v17, "Supersonic"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v4, v1}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 67
    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setPermissions(Ljava/util/List;)V

    .line 68
    new-instance v4, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v2, "AdColony"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v4, v2, v6, v0}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 69
    invoke-virtual {v4, v5}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setPermissions(Ljava/util/List;)V

    .line 70
    new-instance v5, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v2, "AppLovin"

    const/4 v6, 0x1

    invoke-direct {v5, v2, v7, v6}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 71
    new-instance v6, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v2, "Chartboost"

    const/4 v7, 0x1

    invoke-direct {v6, v2, v8, v7}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 72
    new-instance v7, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v2, "Flurry"

    const/4 v8, 0x1

    invoke-direct {v7, v2, v9, v8}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 73
    new-instance v8, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v2, "HyprMX"

    const/4 v9, 0x1

    invoke-direct {v8, v2, v10, v9}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 74
    const-string v2, "com.hyprmx.android.activities.HyprMXActivity"

    invoke-virtual {v8, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setSdkName(Ljava/lang/String;)V

    .line 75
    new-instance v9, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v2, "NativeX"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v11, v10}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 76
    invoke-virtual {v9, v15}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setExternalLibraries(Ljava/util/ArrayList;)V

    .line 77
    new-instance v10, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v2, "UnityAds"

    const/4 v11, 0x0

    const/4 v15, 0x1

    invoke-direct {v10, v2, v11, v15}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 78
    const-string v2, "com.unity3d.ads.android.UnityAds"

    invoke-virtual {v10, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setSdkName(Ljava/lang/String;)V

    .line 79
    new-instance v11, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v2, "Vungle"

    const/4 v15, 0x1

    invoke-direct {v11, v2, v12, v15}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 80
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setExternalLibraries(Ljava/util/ArrayList;)V

    .line 81
    new-instance v12, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v2, "InMobi"

    const/4 v15, 0x1

    invoke-direct {v12, v2, v13, v15}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 82
    invoke-virtual {v12, v14}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setBroadcastReceivers(Ljava/util/List;)V

    .line 84
    new-instance v2, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;

    invoke-direct/range {v2 .. v12}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;-><init>(Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;)V

    .line 99
    const-string v3, "IntegrationHelper"

    const-string v4, "Verifying Integration:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateGooglePlayServices(Landroid/app/Activity;)V

    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    .line 104
    const/4 v3, 0x1

    .line 106
    const-string v5, "IntegrationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--------------- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->isAdapter()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getAdapterName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateAdapter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    const/4 v3, 0x0

    .line 111
    :cond_0
    if-eqz v3, :cond_5

    .line 112
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getSdkName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 113
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getSdkName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateSdk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    const/4 v3, 0x0

    .line 115
    :cond_1
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getPermissions()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 116
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getPermissions()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validatePermissions(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 117
    const/4 v3, 0x0

    .line 118
    :cond_2
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getActivities()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 119
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getActivities()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateActivities(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 120
    const/4 v3, 0x0

    .line 121
    :cond_3
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getExternalLibraries()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 122
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getExternalLibraries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateExternalLibraries(Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 123
    const/4 v3, 0x0

    .line 124
    :cond_4
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 125
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateBroadcastReceivers(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 126
    const/4 v3, 0x0

    .line 129
    :cond_5
    if-eqz v3, :cond_6

    .line 130
    const-string v3, "IntegrationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " - VERIFIED"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    :cond_6
    const-string v3, "IntegrationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " - NOT VERIFIED"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    :cond_7
    return-void
.end method

.method private static validatePermissions(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 216
    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 219
    const-string v0, "IntegrationHelper"

    const-string v1, "*** Permissions ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 223
    if-nez v6, :cond_0

    .line 224
    invoke-static {v0, v2}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    move v0, v1

    :goto_1
    move v1, v0

    .line 229
    goto :goto_0

    .line 227
    :cond_0
    invoke-static {v0, v3}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    move v0, v3

    goto :goto_1

    .line 231
    :cond_1
    return v1
.end method

.method private static validateSdk(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    .line 176
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :try_start_1
    const-string v2, "SDK"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v0

    move v0, v1

    .line 181
    :goto_1
    const-string v2, "SDK"

    invoke-static {v2, v1}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 180
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static validationMessage(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    const-string v0, "IntegrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - VERIFIED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "IntegrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - MISSING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
