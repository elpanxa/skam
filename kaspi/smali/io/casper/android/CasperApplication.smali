.class public Lio/casper/android/CasperApplication;
.super Landroid/app/Application;
.source "CasperApplication.java"


# static fields
.field public static final INTENT_BROADCAST_BACKGROUND_UPLOAD_STATE_UPDATED:Ljava/lang/String; = "io.casper.android.INTENT_BACKGROUND_UPLOAD_STATE_UPDATED"

.field public static final INTENT_BROADCAST_NOTIFICATION_PLUGIN:Ljava/lang/String; = "io.casper.android.INTENT_NOTIFICATION_PLUGIN"

.field public static final INTENT_BROADCAST_REFRESH_FEEDS:Ljava/lang/String; = "io.casper.android.INTENT_REFRESH_FEEDS"

.field public static final INTENT_BROADCAST_REFRESH_FRIENDS:Ljava/lang/String; = "io.casper.android.INTENT_REFRESH_FRIENDS"

.field public static final INTENT_BROADCAST_REFRESH_SNAPCHAT_ACCOUNT:Ljava/lang/String; = "io.casper.android.INTENT_REFRESH_SNAPCHAT_ACCOUNT"

.field public static final INTENT_BROADCAST_REFRESH_SNAPS:Ljava/lang/String; = "io.casper.android.INTENT_REFRESH_SNAPS"

.field public static final INTENT_BROADCAST_REFRESH_STORIES:Ljava/lang/String; = "io.casper.android.INTENT_REFRESH_STORIES"

.field public static final INTENT_BROADCAST_START_NOTIFICATION_SCHEDULE:Ljava/lang/String; = "io.casper.android.INTENT_START_NOTIFICATION_SCHEDULE"

.field private static final TAG:Ljava/lang/String; = "CasperApplication"

.field public static sInstance:Lio/casper/android/CasperApplication;

.field private static sPicasso:Lcom/squareup/picasso/Picasso;


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mAnalyticsManager:Lio/casper/android/l/c;

.field private mDeviceIdentification:Lio/casper/android/g/a;

.field private mImojiManager:Lio/casper/android/l/j;

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;

.field private mVersion:Ljava/lang/String;

.field private mVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 168
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 176
    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 219
    :goto_0
    return-object v0

    .line 181
    :cond_0
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 187
    const-string v1, "image"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "image"

    .line 189
    :goto_1
    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    :cond_1
    const-string v3, "Intent.Extra_STREAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " URI Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p0, v0}, Lio/casper/android/util/k;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_7

    .line 196
    const-string v3, "Intent.Extra_STREAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPath Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 199
    :cond_2
    const v0, 0x7f07006f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/casper/android/util/a;->a(Landroid/content/Context;II)V

    :cond_3
    :goto_2
    move-object v0, v2

    .line 219
    goto/16 :goto_0

    .line 187
    :cond_4
    const-string v1, "video"

    goto :goto_1

    .line 202
    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 204
    const-string v3, "file"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "type"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 207
    :cond_6
    const v0, 0x7f07006d

    invoke-static {p0, v0, v6}, Lio/casper/android/util/a;->a(Landroid/content/Context;II)V

    goto :goto_2

    .line 213
    :cond_7
    const v0, 0x7f07006e

    invoke-static {p0, v0, v6}, Lio/casper/android/util/a;->a(Landroid/content/Context;II)V

    goto :goto_2
.end method

.method public static a()Lio/casper/android/CasperApplication;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lio/casper/android/CasperApplication;->sInstance:Lio/casper/android/CasperApplication;

    return-object v0
.end method

.method public static b()Lio/casper/android/d/a;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lio/casper/android/d/a;

    invoke-static {}, Lio/casper/android/CasperApplication;->a()Lio/casper/android/CasperApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/d/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lio/casper/android/CasperApplication;->a()Lio/casper/android/CasperApplication;

    move-result-object v1

    .line 109
    if-nez v1, :cond_0

    .line 110
    const-string v0, "Unknown"

    .line 126
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v0, v1, Lio/casper/android/CasperApplication;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, v1, Lio/casper/android/CasperApplication;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v1}, Lio/casper/android/CasperApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    invoke-virtual {v1}, Lio/casper/android/CasperApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 121
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v1, Lio/casper/android/CasperApplication;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    iget-object v0, v1, Lio/casper/android/CasperApplication;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static e()Lcom/squareup/picasso/Picasso;
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lio/casper/android/CasperApplication;->sPicasso:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-static {}, Lio/casper/android/CasperApplication;->a()Lio/casper/android/CasperApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/casper/android/util/m;

    invoke-direct {v1}, Lio/casper/android/util/m;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso$Builder;->addRequestHandler(Lcom/squareup/picasso/RequestHandler;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sput-object v0, Lio/casper/android/CasperApplication;->sPicasso:Lcom/squareup/picasso/Picasso;

    .line 229
    :cond_0
    sget-object v0, Lio/casper/android/CasperApplication;->sPicasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public declared-synchronized d()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/casper/android/CasperApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lio/casper/android/CasperApplication;->mAnalyticsManager:Lio/casper/android/l/c;

    invoke-virtual {v1}, Lio/casper/android/l/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/CasperApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 158
    iget-object v0, p0, Lio/casper/android/CasperApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 159
    iget-object v0, p0, Lio/casper/android/CasperApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 160
    iget-object v0, p0, Lio/casper/android/CasperApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 163
    :cond_0
    iget-object v0, p0, Lio/casper/android/CasperApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 66
    const-string v0, "CasperApplication"

    const-string v1, "onCreate[start]"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sput-object p0, Lio/casper/android/CasperApplication;->sInstance:Lio/casper/android/CasperApplication;

    .line 69
    invoke-static {}, Lio/casper/android/f/c;->b()V

    .line 71
    new-instance v0, Lio/casper/android/l/a;

    invoke-direct {v0, p0}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/CasperApplication;->mAdManager:Lio/casper/android/l/a;

    .line 72
    new-instance v0, Lio/casper/android/l/c;

    invoke-direct {v0, p0}, Lio/casper/android/l/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/CasperApplication;->mAnalyticsManager:Lio/casper/android/l/c;

    .line 73
    new-instance v0, Lio/casper/android/l/j;

    invoke-direct {v0, p0}, Lio/casper/android/l/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/CasperApplication;->mImojiManager:Lio/casper/android/l/j;

    .line 74
    new-instance v0, Lio/casper/android/g/a;

    invoke-direct {v0}, Lio/casper/android/g/a;-><init>()V

    iput-object v0, p0, Lio/casper/android/CasperApplication;->mDeviceIdentification:Lio/casper/android/g/a;

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 79
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v0, p0, Lio/casper/android/CasperApplication;->mAdManager:Lio/casper/android/l/a;

    invoke-virtual {v0}, Lio/casper/android/l/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/CasperApplication;->mAdManager:Lio/casper/android/l/a;

    invoke-virtual {v1}, Lio/casper/android/l/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    iget-object v0, p0, Lio/casper/android/CasperApplication;->mImojiManager:Lio/casper/android/l/j;

    invoke-virtual {v0}, Lio/casper/android/l/j;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/CasperApplication;->mImojiManager:Lio/casper/android/l/j;

    invoke-virtual {v1}, Lio/casper/android/l/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiApi;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lio/casper/android/CasperApplication;->d()Lcom/google/android/gms/analytics/Tracker;

    .line 86
    const-string v0, "CasperApplication"

    const-string v1, "onCreate[end]"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lio/casper/android/CasperApplication;->mDeviceIdentification:Lio/casper/android/g/a;

    invoke-virtual {v0}, Lio/casper/android/g/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 89
    const-string v0, "cpu_abi"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "cpu_abi2"

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method
