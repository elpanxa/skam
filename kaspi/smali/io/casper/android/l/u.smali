.class public Lio/casper/android/l/u;
.super Lio/casper/android/l/a/a;
.source "SnapchatSyncManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapchatSyncManager"


# instance fields
.field private mAddedMeFriendsTable:Lio/casper/android/n/c/a/a;

.field private mFriendManager:Lio/casper/android/l/h;

.field private mFriendStoriesTable:Lio/casper/android/n/c/a/c;

.field private mFriendsTable:Lio/casper/android/n/c/a/d;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;

.field private mSnapchatAccountsTable:Lio/casper/android/e/c/a;

.field private mSnapchatManager:Lio/casper/android/l/t;

.field private mStoriesTable:Lio/casper/android/n/c/a/g;

.field private mStoryNotesTable:Lio/casper/android/n/c/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lio/casper/android/n/c/a/d;->i()Lio/casper/android/n/c/a/d;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/u;->mFriendsTable:Lio/casper/android/n/c/a/d;

    .line 37
    invoke-static {}, Lio/casper/android/n/c/a/a;->i()Lio/casper/android/n/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/u;->mAddedMeFriendsTable:Lio/casper/android/n/c/a/a;

    .line 38
    invoke-static {}, Lio/casper/android/n/c/a/g;->i()Lio/casper/android/n/c/a/g;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/u;->mStoriesTable:Lio/casper/android/n/c/a/g;

    .line 39
    invoke-static {}, Lio/casper/android/n/c/a/h;->i()Lio/casper/android/n/c/a/h;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/u;->mStoryNotesTable:Lio/casper/android/n/c/a/h;

    .line 40
    invoke-static {}, Lio/casper/android/n/c/a/c;->i()Lio/casper/android/n/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/u;->mFriendStoriesTable:Lio/casper/android/n/c/a/c;

    .line 41
    invoke-static {}, Lio/casper/android/e/c/a;->i()Lio/casper/android/e/c/a;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/u;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    .line 43
    new-instance v0, Lio/casper/android/l/h;

    iget-object v1, p0, Lio/casper/android/l/u;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/u;->mFriendManager:Lio/casper/android/l/h;

    .line 44
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/l/u;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/u;->mSettingsManager:Lio/casper/android/l/r;

    .line 45
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/l/u;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/u;->mSnapchatManager:Lio/casper/android/l/t;

    .line 46
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/l/u;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/u;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 48
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lio/casper/android/n/a/c/d;)V
    .locals 4

    .prologue
    .line 72
    monitor-enter p0

    if-nez p1, :cond_1

    .line 73
    :try_start_0
    const-string v0, "SnapchatSyncManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Attempted to Sync ConversationsResponse, but was null!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lio/casper/android/n/a/c/d;->b()Lio/casper/android/n/a/c/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/g;)V

    .line 78
    invoke-virtual {p1}, Lio/casper/android/n/a/c/d;->a()Lio/casper/android/n/a/c/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/k;)V

    .line 80
    invoke-virtual {p1}, Lio/casper/android/n/a/c/d;->d()Lio/casper/android/n/a/c/b/s;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lio/casper/android/l/u;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1, v0}, Lio/casper/android/l/t;->a(Lio/casper/android/n/a/c/b/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lio/casper/android/n/a/c/g;)V
    .locals 4

    .prologue
    .line 121
    monitor-enter p0

    if-nez p1, :cond_0

    .line 122
    :try_start_0
    const-string v0, "SnapchatSyncManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Attempted to Sync FriendsResponse, but was null!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lio/casper/android/n/a/c/g;->a()Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lio/casper/android/n/a/c/g;->b()Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Lio/casper/android/n/a/c/g;->c()Ljava/util/List;

    move-result-object v2

    .line 130
    if-eqz v0, :cond_1

    .line 131
    iget-object v3, p0, Lio/casper/android/l/u;->mFriendManager:Lio/casper/android/l/h;

    invoke-virtual {v3, v0}, Lio/casper/android/l/h;->a(Ljava/util/List;)V

    .line 134
    :cond_1
    if-eqz v1, :cond_2

    .line 135
    iget-object v0, p0, Lio/casper/android/l/u;->mFriendsTable:Lio/casper/android/n/c/a/d;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d;->f()V

    .line 136
    iget-object v0, p0, Lio/casper/android/l/u;->mFriendsTable:Lio/casper/android/n/c/a/d;

    invoke-virtual {v0, v1}, Lio/casper/android/n/c/a/d;->a(Ljava/util/List;)V

    .line 139
    :cond_2
    if-eqz v2, :cond_3

    .line 140
    iget-object v0, p0, Lio/casper/android/l/u;->mAddedMeFriendsTable:Lio/casper/android/n/c/a/a;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/a;->f()V

    .line 141
    iget-object v0, p0, Lio/casper/android/l/u;->mAddedMeFriendsTable:Lio/casper/android/n/c/a/a;

    invoke-virtual {v0, v2}, Lio/casper/android/n/c/a/a;->a(Ljava/util/List;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lio/casper/android/l/u;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.casper.android.INTENT_REFRESH_FRIENDS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lio/casper/android/n/a/c/i;)V
    .locals 4

    .prologue
    .line 54
    monitor-enter p0

    if-nez p1, :cond_1

    .line 55
    :try_start_0
    const-string v0, "SnapchatSyncManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Attempted to Sync LoginResponse, but was null!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lio/casper/android/n/a/c/i;->a()Lio/casper/android/n/a/c/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/k;)V

    .line 60
    invoke-virtual {p1}, Lio/casper/android/n/a/c/i;->b()Lio/casper/android/n/a/c/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/g;)V

    .line 61
    invoke-virtual {p1}, Lio/casper/android/n/a/c/i;->c()Lio/casper/android/n/a/c/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/j;)V

    .line 63
    invoke-virtual {p1}, Lio/casper/android/n/a/c/i;->e()Lio/casper/android/n/a/c/b/s;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lio/casper/android/l/u;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1, v0}, Lio/casper/android/l/t;->a(Lio/casper/android/n/a/c/b/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lio/casper/android/n/a/c/j;)V
    .locals 4

    .prologue
    .line 150
    monitor-enter p0

    if-nez p1, :cond_0

    .line 151
    :try_start_0
    const-string v0, "SnapchatSyncManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Attempted to Sync StoriesResponse, but was null!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/casper/android/l/u;->mStoriesTable:Lio/casper/android/n/c/a/g;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/g;->f()V

    .line 156
    iget-object v0, p0, Lio/casper/android/l/u;->mStoryNotesTable:Lio/casper/android/n/c/a/h;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/h;->f()V

    .line 157
    iget-object v0, p0, Lio/casper/android/l/u;->mFriendStoriesTable:Lio/casper/android/n/c/a/c;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/c;->f()V

    .line 159
    invoke-virtual {p1}, Lio/casper/android/n/a/c/j;->a()Ljava/util/List;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_3

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/t;

    .line 164
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/t;->b()Lio/casper/android/n/a/c/b/x;

    move-result-object v2

    .line 165
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/t;->a()Ljava/util/List;

    move-result-object v0

    .line 167
    if-eqz v2, :cond_2

    .line 168
    iget-object v3, p0, Lio/casper/android/l/u;->mStoriesTable:Lio/casper/android/n/c/a/g;

    invoke-virtual {v3, v2}, Lio/casper/android/n/c/a/g;->b(Lio/casper/android/e/a/d;)J

    .line 171
    :cond_2
    if-eqz v0, :cond_1

    .line 172
    iget-object v2, p0, Lio/casper/android/l/u;->mStoryNotesTable:Lio/casper/android/n/c/a/h;

    invoke-virtual {v2, v0}, Lio/casper/android/n/c/a/h;->a(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lio/casper/android/n/a/c/j;->b()Ljava/util/List;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_5

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/j;

    .line 183
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/j;->a()Ljava/util/List;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_4

    .line 185
    iget-object v2, p0, Lio/casper/android/l/u;->mFriendStoriesTable:Lio/casper/android/n/c/a/c;

    invoke-virtual {v2, v0}, Lio/casper/android/n/c/a/c;->a(Ljava/util/List;)V

    goto :goto_2

    .line 191
    :cond_5
    iget-object v0, p0, Lio/casper/android/l/u;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.casper.android.INTENT_REFRESH_STORIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Lio/casper/android/n/a/c/k;)V
    .locals 4

    .prologue
    .line 89
    monitor-enter p0

    if-nez p1, :cond_1

    .line 90
    :try_start_0
    const-string v0, "SnapchatSyncManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Attempted to Sync UpdatesResponse, but was null!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lio/casper/android/n/a/c/k;->g()Ljava/util/List;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    iget-object v1, p0, Lio/casper/android/l/u;->mFriendManager:Lio/casper/android/l/h;

    invoke-virtual {v1, v0}, Lio/casper/android/l/h;->b(Ljava/util/List;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lio/casper/android/l/u;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/k;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/s;->b(J)V

    .line 100
    iget-object v0, p0, Lio/casper/android/l/u;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/k;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/s;->c(J)V

    .line 101
    iget-object v0, p0, Lio/casper/android/l/u;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/k;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/s;->d(J)V

    .line 103
    iget-object v0, p0, Lio/casper/android/l/u;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/k;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/l/r;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lio/casper/android/l/u;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lio/casper/android/l/u;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lio/casper/android/n/a/c/k;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/casper/android/e/b/b;->a(J)V

    .line 110
    invoke-virtual {p1}, Lio/casper/android/n/a/c/k;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/e/b/b;->e(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lio/casper/android/l/u;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    invoke-virtual {v1, v0}, Lio/casper/android/e/c/a;->c(Lio/casper/android/e/a/d;)J

    .line 113
    iget-object v0, p0, Lio/casper/android/l/u;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.casper.android.INTENT_REFRESH_SNAPCHAT_ACCOUNT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
