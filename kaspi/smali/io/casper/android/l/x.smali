.class public Lio/casper/android/l/x;
.super Lio/casper/android/l/a/a;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/l/x$a;
    }
.end annotation


# static fields
.field public static final PREFERENCE_UPDATES_CHECK_INTERVAL:Ljava/lang/String; = "pref_updates_check_interval"

.field public static final PREFERENCE_UPDATES_CHECK_LAST_TIMESTAMP:Ljava/lang/String; = "pref_updates_check_last_timestamp"

.field public static final PREFERENCE_UPDATES_CONFIGURATION_CHECKSUM:Ljava/lang/String; = "pref_updates_configuration_checksum"

.field public static final PREFERENCE_UPDATES_CONFIGURATION_FETCH_ON_LAUNCH:Ljava/lang/String; = "pref_updates_configuration_fetch_on_launch"

.field private static final TAG:Ljava/lang/String; = "UpdateManager"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mAnalyticsManager:Lio/casper/android/l/c;

.field private mAuthManager:Lio/casper/android/l/d;

.field private mDebugSettingsManager:Lio/casper/android/l/f;

.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mImojiManager:Lio/casper/android/l/j;

.field private mNotificationManager:Lio/casper/android/l/o;

.field private mRoutingManager:Lio/casper/android/l/p;

.field private mSnapchatManager:Lio/casper/android/l/t;

.field private mSuperSonicManager:Lio/casper/android/l/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lio/casper/android/l/j;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mImojiManager:Lio/casper/android/l/j;

    .line 50
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mRoutingManager:Lio/casper/android/l/p;

    .line 51
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mAdManager:Lio/casper/android/l/a;

    .line 52
    new-instance v0, Lio/casper/android/l/c;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mAnalyticsManager:Lio/casper/android/l/c;

    .line 53
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 54
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mSnapchatManager:Lio/casper/android/l/t;

    .line 55
    new-instance v0, Lio/casper/android/l/w;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mSuperSonicManager:Lio/casper/android/l/w;

    .line 56
    new-instance v0, Lio/casper/android/l/d;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mAuthManager:Lio/casper/android/l/d;

    .line 57
    new-instance v0, Lio/casper/android/l/f;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mDebugSettingsManager:Lio/casper/android/l/f;

    .line 58
    new-instance v0, Lio/casper/android/l/o;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/x;->mNotificationManager:Lio/casper/android/l/o;

    .line 60
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 75
    const-string v0, "pref_updates_check_interval"

    const-wide/32 v2, 0xf731400

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/x;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 63
    const-string v0, "pref_updates_check_interval"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/x;->b(Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method public a(Lio/casper/android/c/b/b/a/a/a;Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-virtual {p0}, Lio/casper/android/l/x;->c()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const-string v0, "UpdateManager"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Local Configuration Checksum identical to Server Checksum, not Updating"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v0, "UpdateManager"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Local Configuration Checksum different to Server Checksum, Updating Configuration"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->a()Lio/casper/android/c/b/b/a/a/a/a;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->b()Lio/casper/android/c/b/b/a/a/b/a;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->c()Lio/casper/android/c/b/b/a/a/e/a;

    move-result-object v2

    .line 139
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->d()Lio/casper/android/c/b/b/a/a/g/b;

    move-result-object v3

    .line 140
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->e()Lio/casper/android/c/b/b/a/a/j/a;

    move-result-object v4

    .line 141
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->f()Lio/casper/android/c/b/b/a/a/d/c;

    move-result-object v5

    .line 142
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->g()Lio/casper/android/c/b/b/a/a/h/f;

    move-result-object v6

    .line 143
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->h()Lio/casper/android/c/b/b/a/a/i/b;

    move-result-object v7

    .line 144
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->i()Lio/casper/android/c/b/b/a/a/c/a;

    move-result-object v8

    .line 145
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->j()Lio/casper/android/c/b/b/a/a/f/a;

    move-result-object v9

    .line 146
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->k()Ljava/util/Map;

    move-result-object v10

    .line 147
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/a;->l()Z

    move-result v11

    .line 149
    iget-object v12, p0, Lio/casper/android/l/x;->mAdManager:Lio/casper/android/l/a;

    invoke-virtual {v12, v0}, Lio/casper/android/l/a;->a(Lio/casper/android/c/b/b/a/a/a/a;)V

    .line 150
    iget-object v0, p0, Lio/casper/android/l/x;->mAnalyticsManager:Lio/casper/android/l/c;

    invoke-virtual {v0, v1}, Lio/casper/android/l/c;->a(Lio/casper/android/c/b/b/a/a/b/a;)V

    .line 151
    iget-object v0, p0, Lio/casper/android/l/x;->mImojiManager:Lio/casper/android/l/j;

    invoke-virtual {v0, v2}, Lio/casper/android/l/j;->a(Lio/casper/android/c/b/b/a/a/e/a;)V

    .line 152
    iget-object v0, p0, Lio/casper/android/l/x;->mRoutingManager:Lio/casper/android/l/p;

    invoke-virtual {v0, v3}, Lio/casper/android/l/p;->a(Lio/casper/android/c/b/b/a/a/g/b;)V

    .line 153
    iget-object v0, p0, Lio/casper/android/l/x;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0, v5}, Lio/casper/android/l/i;->a(Lio/casper/android/c/b/b/a/a/d/c;)V

    .line 154
    iget-object v0, p0, Lio/casper/android/l/x;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v0, v6}, Lio/casper/android/l/t;->a(Lio/casper/android/c/b/b/a/a/h/f;)V

    .line 155
    iget-object v0, p0, Lio/casper/android/l/x;->mSuperSonicManager:Lio/casper/android/l/w;

    invoke-virtual {v0, v7}, Lio/casper/android/l/w;->a(Lio/casper/android/c/b/b/a/a/i/b;)V

    .line 156
    iget-object v0, p0, Lio/casper/android/l/x;->mAuthManager:Lio/casper/android/l/d;

    invoke-virtual {v0, v8}, Lio/casper/android/l/d;->a(Lio/casper/android/c/b/b/a/a/c/a;)V

    .line 157
    iget-object v0, p0, Lio/casper/android/l/x;->mDebugSettingsManager:Lio/casper/android/l/f;

    invoke-virtual {v0, v10}, Lio/casper/android/l/f;->a(Ljava/util/Map;)V

    .line 158
    iget-object v0, p0, Lio/casper/android/l/x;->mNotificationManager:Lio/casper/android/l/o;

    invoke-virtual {v0, v9}, Lio/casper/android/l/o;->a(Lio/casper/android/c/b/b/a/a/f/a;)V

    .line 160
    const-string v0, "pref_updates_configuration_fetch_on_launch"

    invoke-virtual {p0, v0, v11}, Lio/casper/android/l/x;->c(Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {p0, v4}, Lio/casper/android/l/x;->a(Lio/casper/android/c/b/b/a/a/j/a;)V

    .line 166
    :cond_2
    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p0, p2}, Lio/casper/android/l/x;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lio/casper/android/c/b/b/a/a/j/a;)V
    .locals 4

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/j/a;->a()J

    move-result-wide v0

    .line 181
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 182
    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/x;->a(J)V

    .line 187
    :cond_0
    return-void
.end method

.method public a(Lio/casper/android/l/x$a;)V
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/casper/android/l/x;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/casper/android/l/x;->a()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Lio/casper/android/c/b/a/e;

    iget-object v1, p0, Lio/casper/android/l/x;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/c/b/a/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/casper/android/l/x$1;

    invoke-direct {v1, p0, p1}, Lio/casper/android/l/x$1;-><init>(Lio/casper/android/l/x;Lio/casper/android/l/x$a;)V

    invoke-virtual {v0, v1}, Lio/casper/android/c/b/a/e;->a(Lio/casper/android/c/c/a/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "pref_updates_configuration_checksum"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 79
    const-string v0, "pref_updates_check_last_timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/x;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 67
    const-string v0, "pref_updates_check_last_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/x;->b(Ljava/lang/String;J)V

    .line 68
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    const-string v0, "pref_updates_configuration_checksum"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/x;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 87
    const-string v0, "pref_updates_configuration_fetch_on_launch"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/x;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
