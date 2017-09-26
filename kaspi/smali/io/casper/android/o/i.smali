.class public Lio/casper/android/o/i;
.super Landroid/os/AsyncTask;
.source "SnapchatLoginTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/o/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapchatLoginTask"


# instance fields
.field private mCallback:Lio/casper/android/o/i$a;

.field private mContext:Landroid/content/Context;

.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mPassword:Ljava/lang/String;

.field private mPreAuthToken:Ljava/lang/String;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapchatManager:Lio/casper/android/l/t;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/casper/android/o/i$a;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p1, p0, Lio/casper/android/o/i;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/o/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/o/i;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 52
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/o/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/o/i;->mSettingsManager:Lio/casper/android/l/r;

    .line 53
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/o/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/o/i;->mSnapchatManager:Lio/casper/android/l/t;

    .line 55
    iput-object p2, p0, Lio/casper/android/o/i;->mUsername:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lio/casper/android/o/i;->mPassword:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lio/casper/android/o/i;->mPreAuthToken:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lio/casper/android/o/i;->mCallback:Lio/casper/android/o/i$a;

    .line 62
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 67
    invoke-static {}, Lio/casper/android/n/e/b;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v0, Lio/casper/android/n/a/b/l;

    iget-object v1, p0, Lio/casper/android/o/i;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/o/i;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lio/casper/android/o/i;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lio/casper/android/o/i;->mPreAuthToken:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/a/b/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_0
    iget-object v1, p0, Lio/casper/android/o/i;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->h()Ljava/lang/String;

    move-result-object v2

    .line 77
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This shouldn\'t happen!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :catch_0
    move-exception v1

    .line 266
    :goto_1
    return-object v1

    .line 77
    :sswitch_0
    const-string v3, "ios"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v11

    goto :goto_0

    :sswitch_1
    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v12

    goto :goto_0

    .line 81
    :pswitch_0
    new-instance v5, Lio/casper/android/c/e/a/b;

    iget-object v6, p0, Lio/casper/android/o/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lio/casper/android/o/i;->mUsername:Ljava/lang/String;

    iget-object v8, p0, Lio/casper/android/o/i;->mPassword:Ljava/lang/String;

    iget-object v10, p0, Lio/casper/android/o/i;->mPreAuthToken:Ljava/lang/String;

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Lio/casper/android/c/e/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5}, Lio/casper/android/c/e/a/b;->k()Lio/casper/android/c/c/g/a;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lio/casper/android/c/c/g/a;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/casper/android/c/e/b/b;

    .line 86
    invoke-virtual {v1}, Lio/casper/android/c/e/b/b;->d()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    new-instance v0, Lio/casper/android/c/c/b/a;

    invoke-virtual {v2}, Lio/casper/android/c/c/g/a;->a()Lcom/squareup/okhttp/Response;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v1}, Lio/casper/android/c/e/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lio/casper/android/c/c/b/a;-><init>(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    throw v0

    .line 90
    :cond_1
    invoke-virtual {v1}, Lio/casper/android/c/e/b/b;->f()Lio/casper/android/c/b/b/a/c;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_13

    .line 94
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/c;->g()Z

    move-result v5

    .line 95
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/c;->f()Z

    move-result v3

    .line 97
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/c;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    invoke-virtual {v0}, Lio/casper/android/n/a/b/l;->o()V

    .line 101
    :cond_2
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/c;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {v0}, Lio/casper/android/n/a/b/l;->n()V

    .line 107
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lio/casper/android/c/e/b/b;->a()Ljava/util/Map;

    move-result-object v2

    .line 108
    invoke-virtual {v1}, Lio/casper/android/c/e/b/b;->e()Ljava/util/Map;

    move-result-object v1

    .line 110
    if-nez v2, :cond_4

    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    :cond_4
    if-nez v1, :cond_12

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v6, v1

    .line 118
    :goto_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 119
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v2, v1}, Lio/casper/android/n/a/b/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v8, "SnapchatLoginTask"

    const-string v9, "Server Provided Header: %s=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v10, v13

    const/4 v2, 0x1

    aput-object v1, v10, v2

    invoke-static {v8, v9, v10}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 131
    :cond_5
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 132
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 134
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v2, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v7, "SnapchatLoginTask"

    const-string v8, "Server Provided Param: %s=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    aput-object v1, v9, v2

    invoke-static {v7, v8, v9}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 150
    :pswitch_1
    new-instance v5, Lio/casper/android/c/f/a/b;

    iget-object v6, p0, Lio/casper/android/o/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lio/casper/android/o/i;->mUsername:Ljava/lang/String;

    iget-object v8, p0, Lio/casper/android/o/i;->mPassword:Ljava/lang/String;

    iget-object v10, p0, Lio/casper/android/o/i;->mPreAuthToken:Ljava/lang/String;

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Lio/casper/android/c/f/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v5}, Lio/casper/android/c/f/a/b;->k()Lio/casper/android/c/c/g/a;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Lio/casper/android/c/c/g/a;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/casper/android/c/f/b/b;

    .line 155
    invoke-virtual {v1}, Lio/casper/android/c/f/b/b;->d()Z

    move-result v3

    if-nez v3, :cond_6

    .line 156
    new-instance v0, Lio/casper/android/c/c/b/a;

    invoke-virtual {v2}, Lio/casper/android/c/c/g/a;->a()Lcom/squareup/okhttp/Response;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v1}, Lio/casper/android/c/f/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lio/casper/android/c/c/b/a;-><init>(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    throw v0

    .line 159
    :cond_6
    invoke-virtual {v1}, Lio/casper/android/c/f/b/b;->f()Lio/casper/android/c/b/b/a/c;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_11

    .line 163
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/c;->g()Z

    move-result v5

    .line 164
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/c;->f()Z

    move-result v3

    .line 166
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/c;->a()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 167
    invoke-virtual {v0}, Lio/casper/android/n/a/b/l;->o()V

    .line 170
    :cond_7
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/c;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 171
    invoke-virtual {v0}, Lio/casper/android/n/a/b/l;->n()V

    .line 176
    :cond_8
    :goto_6
    invoke-virtual {v1}, Lio/casper/android/c/f/b/b;->a()Ljava/util/Map;

    move-result-object v2

    .line 177
    invoke-virtual {v1}, Lio/casper/android/c/f/b/b;->e()Ljava/util/Map;

    move-result-object v1

    .line 179
    if-nez v2, :cond_9

    .line 180
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 183
    :cond_9
    if-nez v1, :cond_10

    .line 184
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v6, v1

    .line 187
    :goto_7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 188
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 190
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    invoke-virtual {v0, v2, v1}, Lio/casper/android/n/a/b/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v8, "SnapchatLoginTask"

    const-string v9, "Server Provided Header: %s=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v10, v13

    const/4 v2, 0x1

    aput-object v1, v10, v2

    invoke-static {v8, v9, v10}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 200
    :cond_a
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 201
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 203
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v2, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v7, "SnapchatLoginTask"

    const-string v8, "Server Provided Param: %s=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    aput-object v1, v9, v2

    invoke-static {v7, v8, v9}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :cond_b
    move v1, v3

    move v2, v5

    .line 227
    iget-object v3, v0, Lio/casper/android/n/a/b/l;->mHeaders:Ljava/util/TreeMap;

    const-string v5, "X-Snapchat-Client-Auth-Token"

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v1, :cond_c

    .line 229
    const-string v1, "SnapchatLoginTask"

    const-string v3, "Fetching %s manually"

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "X-Snapchat-Client-Auth-Token"

    aput-object v6, v5, v11

    invoke-static {v1, v3, v5}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    new-instance v1, Lio/casper/android/o/e;

    iget-object v3, p0, Lio/casper/android/o/i;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lio/casper/android/o/i;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v5}, Lio/casper/android/l/i;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/casper/android/o/i;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v6}, Lio/casper/android/l/i;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v3, v5, v6, v7}, Lio/casper/android/o/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/casper/android/o/e$a;)V

    new-array v3, v11, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lio/casper/android/o/e;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v1

    .line 233
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 234
    const-string v3, "X-Snapchat-Client-Auth-Token"

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/casper/android/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lio/casper/android/n/a/b/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_c
    iget-object v1, v0, Lio/casper/android/n/a/b/l;->mHeaders:Ljava/util/TreeMap;

    const-string v3, "X-Snapchat-Client-Auth"

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v2, :cond_f

    .line 244
    const-string v1, "SnapchatLoginTask"

    const-string v2, "Fetching %s manually"

    new-array v3, v12, [Ljava/lang/Object;

    const-string v5, "X-Snapchat-Client-Auth"

    aput-object v5, v3, v11

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :try_start_1
    new-instance v1, Lio/casper/android/c/b/a/d;

    iget-object v2, p0, Lio/casper/android/o/i;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/casper/android/o/i;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lio/casper/android/o/i;->mPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v4}, Lio/casper/android/c/b/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/casper/android/c/b/a/d;->k()Lio/casper/android/c/c/g/a;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lio/casper/android/c/c/g/a;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/casper/android/c/b/b/e;

    .line 251
    invoke-virtual {v1}, Lio/casper/android/c/b/b/e;->d()Z

    move-result v3

    if-nez v3, :cond_e

    .line 252
    new-instance v0, Lio/casper/android/c/c/b/a;

    invoke-virtual {v2}, Lio/casper/android/c/c/g/a;->a()Lcom/squareup/okhttp/Response;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v1}, Lio/casper/android/c/b/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lio/casper/android/c/c/b/a;-><init>(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :catch_1
    move-exception v1

    goto/16 :goto_1

    .line 235
    :cond_d
    instance-of v3, v1, Ljava/lang/Exception;

    if-eqz v3, :cond_c

    .line 236
    const-string v2, "SnapchatLoginTask"

    const-string v3, "GoogleAuthTask failed with Exception"

    move-object v0, v1

    check-cast v0, Ljava/lang/Exception;

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 255
    :cond_e
    :try_start_2
    const-string v2, "X-Snapchat-Client-Auth"

    invoke-virtual {v1}, Lio/casper/android/c/b/b/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lio/casper/android/n/a/b/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    :cond_f
    :try_start_3
    invoke-virtual {v0}, Lio/casper/android/n/a/b/l;->k()Lio/casper/android/c/c/g/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    goto/16 :goto_1

    .line 265
    :catch_2
    move-exception v1

    goto/16 :goto_1

    :cond_10
    move-object v6, v1

    goto/16 :goto_7

    :cond_11
    move v3, v11

    move v5, v11

    goto/16 :goto_6

    :cond_12
    move-object v6, v1

    goto/16 :goto_3

    :cond_13
    move v3, v11

    move v5, v11

    goto/16 :goto_2

    .line 77
    :sswitch_data_0
    .sparse-switch
        -0x3357c991 -> :sswitch_1
        0x1980d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/casper/android/o/i;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lio/casper/android/o/i;->mCallback:Lio/casper/android/o/i$a;

    if-eqz v0, :cond_0

    .line 275
    instance-of v0, p1, Lio/casper/android/c/c/g/a;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lio/casper/android/o/i;->mCallback:Lio/casper/android/o/i$a;

    check-cast p1, Lio/casper/android/c/c/g/a;

    invoke-interface {v0, p1}, Lio/casper/android/o/i$a;->a(Lio/casper/android/c/c/g/a;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lio/casper/android/o/i;->mCallback:Lio/casper/android/o/i$a;

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {v0, p1}, Lio/casper/android/o/i$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
