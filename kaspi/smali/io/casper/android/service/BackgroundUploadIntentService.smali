.class public Lio/casper/android/service/BackgroundUploadIntentService;
.super Landroid/app/IntentService;
.source "BackgroundUploadIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundUploadIntentService"

.field public static mBackgroundUploadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/e/b/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/casper/android/service/BackgroundUploadIntentService;->mBackgroundUploadTasks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "BackgroundUploadIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p0, p0, Lio/casper/android/service/BackgroundUploadIntentService;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {}, Lio/casper/android/n/c/a/b;->i()Lio/casper/android/n/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/service/BackgroundUploadIntentService;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lio/casper/android/e/b/a;I)V
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Lio/casper/android/e/b/a;->a(I)V

    .line 95
    iget-object v0, p0, Lio/casper/android/service/BackgroundUploadIntentService;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    invoke-virtual {v0, p1}, Lio/casper/android/n/c/a/b;->c(Lio/casper/android/e/a/d;)J

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.casper.android.INTENT_BACKGROUND_UPLOAD_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/casper/android/service/BackgroundUploadIntentService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/16 v9, 0xc8

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 41
    const-string v0, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 42
    const-string v0, "BackgroundUploadIntentService"

    const-string v1, "onHandleIntent [id=%s]"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v1, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lio/casper/android/service/BackgroundUploadIntentService;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    invoke-virtual {v0, v2, v3}, Lio/casper/android/n/c/a/b;->a(J)Lio/casper/android/e/a/d;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/b/a;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {v0, v2, v3}, Lio/casper/android/e/b/a;->c(J)V

    .line 50
    sget-object v1, Lio/casper/android/service/BackgroundUploadIntentService;->mBackgroundUploadTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p0, v0, v6}, Lio/casper/android/service/BackgroundUploadIntentService;->a(Lio/casper/android/e/b/a;I)V

    .line 53
    invoke-virtual {v0}, Lio/casper/android/e/b/a;->a()Lio/casper/android/n/a/b/b/d;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lio/casper/android/e/b/a;->b()Lio/casper/android/n/a/b/b/a;

    move-result-object v2

    .line 58
    :try_start_0
    new-instance v3, Lio/casper/android/n/a/b/y;

    iget-object v4, p0, Lio/casper/android/service/BackgroundUploadIntentService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lio/casper/android/n/a/b/y;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/b/d;)V

    invoke-virtual {v3}, Lio/casper/android/n/a/b/y;->k()Lio/casper/android/c/c/g/a;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lio/casper/android/c/c/g/a;->a()Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    if-ne v1, v9, :cond_2

    .line 62
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lio/casper/android/service/BackgroundUploadIntentService;->a(Lio/casper/android/e/b/a;I)V

    .line 64
    new-instance v1, Lio/casper/android/n/a/b/p;

    iget-object v3, p0, Lio/casper/android/service/BackgroundUploadIntentService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Lio/casper/android/n/a/b/p;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/b/a;)V

    invoke-virtual {v1}, Lio/casper/android/n/a/b/p;->k()Lio/casper/android/c/c/g/a;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lio/casper/android/c/c/g/a;->a()Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    .line 68
    if-eq v1, v9, :cond_0

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xca

    if-ne v1, v2, :cond_1

    .line 69
    :cond_0
    iget-object v1, p0, Lio/casper/android/service/BackgroundUploadIntentService;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    invoke-virtual {v1, v0}, Lio/casper/android/n/c/a/b;->d(Lio/casper/android/e/a/d;)V

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.casper.android.INTENT_REFRESH_SNAPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/casper/android/service/BackgroundUploadIntentService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    sget-object v1, Lio/casper/android/service/BackgroundUploadIntentService;->mBackgroundUploadTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    :goto_1
    return-void

    .line 72
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lio/casper/android/service/BackgroundUploadIntentService;->a(Lio/casper/android/e/b/a;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "BackgroundUploadIntentService"

    const-string v3, "Background Upload failed with Exception"

    invoke-static {v2, v3, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    invoke-virtual {p0, v0, v7}, Lio/casper/android/service/BackgroundUploadIntentService;->a(Lio/casper/android/e/b/a;I)V

    goto :goto_0

    .line 76
    :cond_2
    const/4 v1, 0x2

    :try_start_2
    invoke-virtual {p0, v0, v1}, Lio/casper/android/service/BackgroundUploadIntentService;->a(Lio/casper/android/e/b/a;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 87
    :cond_3
    const-string v0, "BackgroundUploadIntentService"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BackgroundUploadTask is Null"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
