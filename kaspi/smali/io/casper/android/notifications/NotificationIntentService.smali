.class public Lio/casper/android/notifications/NotificationIntentService;
.super Landroid/app/IntentService;
.source "NotificationIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationIntentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mNotificationManager:Lio/casper/android/l/o;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;

.field private mSnapchatManager:Lio/casper/android/l/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "NotificationIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    const-string v0, "NotificationIntentService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onHandleIntent"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iput-object p0, p0, Lio/casper/android/notifications/NotificationIntentService;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/notifications/NotificationIntentService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/notifications/NotificationIntentService;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 41
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/notifications/NotificationIntentService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/notifications/NotificationIntentService;->mSnapchatManager:Lio/casper/android/l/t;

    .line 42
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/notifications/NotificationIntentService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/notifications/NotificationIntentService;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 43
    new-instance v0, Lio/casper/android/l/o;

    iget-object v1, p0, Lio/casper/android/notifications/NotificationIntentService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/notifications/NotificationIntentService;->mNotificationManager:Lio/casper/android/l/o;

    .line 56
    :try_start_0
    iget-object v0, p0, Lio/casper/android/notifications/NotificationIntentService;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 59
    new-instance v1, Lio/casper/android/n/a/b/n;

    iget-object v2, p0, Lio/casper/android/notifications/NotificationIntentService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lio/casper/android/n/a/b/n;-><init>(Landroid/content/Context;Lio/casper/android/e/b/b;)V

    invoke-virtual {v1}, Lio/casper/android/n/a/b/n;->k()Lio/casper/android/c/c/g/a;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lio/casper/android/c/c/g/a;->a()Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lio/casper/android/c/c/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/a;

    .line 62
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lio/casper/android/n/a/c/a;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->f()Lio/casper/android/n/a/c/b/w;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->d()Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lio/casper/android/notifications/NotificationIntentService;->mNotificationManager:Lio/casper/android/l/o;

    invoke-virtual {v2}, Lio/casper/android/l/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lio/casper/android/notifications/NotificationIntentService;->mNotificationManager:Lio/casper/android/l/o;

    invoke-virtual {v2}, Lio/casper/android/l/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lio/casper/android/notifications/NotificationIntentService;->mNotificationManager:Lio/casper/android/l/o;

    invoke-virtual {v2, v1}, Lio/casper/android/l/o;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lio/casper/android/notifications/NotificationIntentService;->mNotificationManager:Lio/casper/android/l/o;

    invoke-virtual {v1, v0}, Lio/casper/android/l/o;->a(Lio/casper/android/n/a/c/b/w;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lio/casper/android/notifications/NotificationIntentService;->mNotificationManager:Lio/casper/android/l/o;

    invoke-virtual {v0, v1}, Lio/casper/android/l/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v1, "NotificationIntentService"

    const-string v2, "Execution of NotificationService failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    const-string v1, "NotificationIntentService"

    const-string v2, "Execution of NotificationService failed with Error"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
