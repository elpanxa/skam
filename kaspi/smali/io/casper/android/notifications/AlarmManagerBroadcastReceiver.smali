.class public Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmManagerBroadcastReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Lio/casper/android/l/o;

.field private mSettingsManager:Lio/casper/android/l/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 74
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/notifications/NotificationIntentService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    new-instance v2, Landroid/content/Intent;

    const-string v0, "io.casper.android.INTENT_START_NOTIFICATION_SCHEDULE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->B()I

    move-result v3

    .line 78
    iget-object v0, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mNotificationManager:Lio/casper/android/l/o;

    invoke-virtual {v0}, Lio/casper/android/l/o;->c()J

    move-result-wide v4

    .line 80
    iget-object v0, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 81
    iget-object v6, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mContext:Landroid/content/Context;

    const/high16 v7, 0x10000000

    invoke-static {v6, v10, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 85
    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_1

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 87
    const-string v4, "AlarmManagerBroadcastReceiver"

    const-string v5, "NotificationService interval overridden by server: %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5, v7}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    invoke-virtual {v0, v10, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 97
    iget-object v0, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->o()Z

    move-result v0

    .line 98
    iget-object v2, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mNotificationManager:Lio/casper/android/l/o;

    invoke-virtual {v2}, Lio/casper/android/l/o;->b()Z

    move-result v2

    .line 100
    const-string v3, "AlarmManagerBroadcastReceiver"

    const-string v4, "NotificationService Enabled State. User=%s Server=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v4, v5}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 103
    iget-object v0, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    :cond_0
    return-void

    .line 89
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 90
    const/16 v4, 0xc

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 91
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 92
    const-string v4, "AlarmManagerBroadcastReceiver"

    const-string v5, "NotificationService interval set by user: %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5, v7}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    const/high16 v1, 0x20000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 27
    iput-object p1, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lio/casper/android/l/r;

    iget-object v2, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mSettingsManager:Lio/casper/android/l/r;

    .line 30
    new-instance v0, Lio/casper/android/l/o;

    iget-object v2, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/l/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->mNotificationManager:Lio/casper/android/l/o;

    .line 32
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 33
    const-string v2, "AlarmManagerBroadcastReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 36
    :try_start_0
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 42
    if-eqz v3, :cond_1

    .line 44
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_3
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v3, "AlarmManagerBroadcastReceiver"

    const-string v4, "Acquiring WakeLock failed with Exception"

    invoke-static {v3, v4, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    :sswitch_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "io.casper.android.INTENT_START_NOTIFICATION_SCHEDULE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    .line 48
    :pswitch_0
    invoke-direct {p0}, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->a()V

    goto :goto_2

    .line 55
    :pswitch_1
    invoke-direct {p0}, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->a()V

    goto :goto_2

    .line 66
    :catch_1
    move-exception v0

    .line 67
    const-string v1, "AlarmManagerBroadcastReceiver"

    const-string v2, "Releasing WakeLock failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0xc269a8 -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
