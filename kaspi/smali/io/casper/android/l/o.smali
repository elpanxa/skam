.class public Lio/casper/android/l/o;
.super Lio/casper/android/l/a/a;
.source "NotificationManager.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1

.field public static final PREFERENCE_NOTIFICATIONS_ENABLED_BY_SERVER:Ljava/lang/String; = "pref_notifications_enabled_by_server"

.field public static final PREFERENCE_NOTIFICATIONS_INTERVAL_OVERRIDE:Ljava/lang/String; = "pref_notifications_interval_override"

.field public static final PREFERENCE_NOTIFICATIONS_LAST_SNAP_ID:Ljava/lang/String; = "pref_notifications_last_snap_id"

.field private static final TAG:Ljava/lang/String; = "NotificationManager"


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/l/o;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/o;->mAccountManager:Lio/casper/android/l/s;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    const-string v0, "pref_notifications_last_snap_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/o;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 50
    const-string v0, "pref_notifications_interval_override"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/o;->b(Ljava/lang/String;J)V

    .line 51
    return-void
.end method

.method public a(Lio/casper/android/c/b/b/a/a/f/a;)V
    .locals 4

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/f/a;->a()Z

    move-result v0

    .line 102
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/f/a;->b()J

    move-result-wide v2

    .line 104
    invoke-virtual {p0, v0}, Lio/casper/android/l/o;->a(Z)V

    .line 105
    invoke-virtual {p0, v2, v3}, Lio/casper/android/l/o;->a(J)V

    .line 109
    :cond_0
    return-void
.end method

.method public a(Lio/casper/android/n/a/c/b/w;)V
    .locals 6

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lio/casper/android/l/o;->mContext:Landroid/content/Context;

    const v1, 0x7f0700cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v0, p0, Lio/casper/android/l/o;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lio/casper/android/l/o;->mAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v3}, Lio/casper/android/l/s;->m()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 64
    iget-object v0, p0, Lio/casper/android/l/o;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 66
    iget-object v3, p0, Lio/casper/android/l/o;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 67
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lio/casper/android/l/o;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    const v2, 0x7f0200ac

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 75
    iget-object v1, p0, Lio/casper/android/l/o;->mContext:Landroid/content/Context;

    const v2, 0x7f070030

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    const v1, 0x7f0200ec

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 79
    const v2, 0x9b59b6

    iput v2, v1, Landroid/app/Notification;->ledARGB:I

    .line 80
    const/16 v2, 0x11

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 81
    const/16 v2, 0x1f4

    iput v2, v1, Landroid/app/Notification;->ledOnMS:I

    .line 82
    const/16 v2, 0xdac

    iput v2, v1, Landroid/app/Notification;->ledOffMS:I

    .line 84
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 87
    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "NotificationManager"

    const-string v2, "Displaying Notification failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "pref_notifications_last_snap_id"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/o;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "pref_notifications_enabled_by_server"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/o;->c(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 46
    const-string v0, "pref_notifications_enabled_by_server"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/o;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()J
    .locals 4

    .prologue
    .line 54
    const-string v0, "pref_notifications_interval_override"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/o;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
