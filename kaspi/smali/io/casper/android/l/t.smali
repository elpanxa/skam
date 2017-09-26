.class public Lio/casper/android/l/t;
.super Lio/casper/android/l/a/a;
.source "SnapchatManager.java"


# static fields
.field public static final PREFERENCE_SNAPCHAT_ARXAN_ENABLED:Ljava/lang/String; = "pref_snapchat_arxan_enabled"

.field public static final PREFERENCE_SNAPCHAT_ARXAN_SERVER:Ljava/lang/String; = "pref_snapchat_arxan_server"

.field public static final PREFERENCE_SNAPCHAT_CHAT_CONNECT_APP_VERSION:Ljava/lang/String; = "pref_snapchat_chat_connect_app_version"

.field public static final PREFERENCE_SNAPCHAT_CHAT_CONNECT_PLATFORM:Ljava/lang/String; = "pref_snapchat_chat_connect_platform"

.field public static final PREFERENCE_SNAPCHAT_CHAT_CONNECT_VERSION:Ljava/lang/String; = "pref_snapchat_chat_connect_version"

.field public static final PREFERENCE_SNAPCHAT_CHAT_MESSAGING_GATEWAY_INFO:Ljava/lang/String; = "pref_snapchat_chat_messaging_gateway_info"

.field public static final PREFERENCE_SNAPCHAT_CHAT_SESSION_PING_ENABLED:Ljava/lang/String; = "pref_snapchat_chat_session_ping_enabled"

.field public static final PREFERENCE_SNAPCHAT_LOGIN_CLIENT_AUTH_REQUEST:Ljava/lang/String; = "pref_snapchat_login_client_auth_request"

.field public static final PREFERENCE_SNAPCHAT_LOGIN_GOOGLE_AUTH_REQUEST:Ljava/lang/String; = "pref_snapchat_login_google_auth_request"

.field public static final PREFERENCE_SNAPCHAT_LOGIN_MODE:Ljava/lang/String; = "pref_snapchat_login_mode"

.field public static final PREFERENCE_SNAPCHAT_LOGIN_VERSION:Ljava/lang/String; = "pref_snapchat_login_version"

.field public static final PREFERENCE_SNAPCHAT_MAX_SIMULTANEOUS_DOWNLOADS_SNAPS:Ljava/lang/String; = "pref_snapchat_max_simultaneous_downloads_snaps"

.field public static final PREFERENCE_SNAPCHAT_MAX_SIMULTANEOUS_DOWNLOADS_STORIES:Ljava/lang/String; = "pref_snapchat_max_simultaneous_downloads_stories"

.field public static final PREFERENCE_SNAPCHAT_PHOTO_SNAP_COMPRESSION:Ljava/lang/String; = "pref_snapchat_photo_snap_compression"

.field public static final PREFERENCE_SNAPCHAT_SERVER:Ljava/lang/String; = "pref_snapchat_server"

.field public static final PREFERENCE_SNAPCHAT_VERSION:Ljava/lang/String; = "pref_snapchat_version"

.field public static final PREFERENCE_SNAPCHAT_VERSION_TEXT:Ljava/lang/String; = "pref_snapchat_version_text"

.field public static final PREFERENCE_SNAPCHAT_ZELTA_ENABLED:Ljava/lang/String; = "pref_snapchat_zelta_enabled"

.field public static final PREFERENCE_SNAPCHAT_ZELTA_SERVER:Ljava/lang/String; = "pref_snapchat_zelta_server"

.field private static final TAG:Ljava/lang/String; = "SnapchatManager"

.field public static final TYPE_DYNAMIC_HEADERS:I = 0x0

.field public static final TYPE_DYNAMIC_PARAMS:I = 0x1


# instance fields
.field private mInternalCacheManager:Lio/casper/android/l/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/l/t;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/l/t;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 58
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    const-string v0, "pref_snapchat_server"

    sget-object v1, Lio/casper/android/n/a;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 335
    if-eqz p1, :cond_1

    .line 337
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lio/casper/android/l/t;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v0, p1}, Lio/casper/android/l/k;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 339
    :goto_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 340
    const/4 v2, 0x0

    .line 343
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 348
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 351
    :goto_1
    invoke-virtual {v4}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-virtual {v4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 337
    :cond_0
    iget-object v0, p0, Lio/casper/android/l/t;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v0, p1}, Lio/casper/android/l/k;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 346
    :goto_3
    :try_start_2
    const-string v2, "SnapchatManager"

    const-string v5, "Loading Dynamic Endpoint Params or Headers failed with Exception"

    invoke-static {v2, v5, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 357
    :cond_1
    return-object v3

    .line 348
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 345
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public a(Lio/casper/android/c/b/b/a/a/h/f;)V
    .locals 10

    .prologue
    .line 175
    if-eqz p1, :cond_10

    .line 177
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/h/f;->a()I

    move-result v0

    .line 178
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/h/f;->b()I

    move-result v1

    .line 179
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/h/f;->c()I

    move-result v2

    .line 181
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/h/f;->d()Lio/casper/android/c/b/b/a/a/h/b;

    move-result-object v3

    .line 182
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/h/f;->e()Lio/casper/android/c/b/b/a/a/h/a;

    move-result-object v4

    .line 183
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/h/f;->f()Lio/casper/android/c/b/b/a/a/h/g;

    move-result-object v5

    .line 184
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/h/f;->g()Lio/casper/android/c/b/b/a/a/h/e;

    move-result-object v6

    .line 185
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/h/f;->h()Lio/casper/android/c/b/b/a/a/h/c;

    move-result-object v7

    .line 186
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/h/f;->i()Ljava/lang/String;

    move-result-object v8

    .line 188
    if-lez v0, :cond_0

    .line 189
    const-string v9, "pref_snapchat_max_simultaneous_downloads_snaps"

    invoke-virtual {p0, v9, v0}, Lio/casper/android/l/t;->c(Ljava/lang/String;I)V

    .line 192
    :cond_0
    if-lez v1, :cond_1

    .line 193
    const-string v0, "pref_snapchat_max_simultaneous_downloads_stories"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->c(Ljava/lang/String;I)V

    .line 196
    :cond_1
    if-lez v2, :cond_2

    .line 197
    const-string v0, "pref_snapchat_photo_snap_compression"

    invoke-virtual {p0, v0, v2}, Lio/casper/android/l/t;->c(Ljava/lang/String;I)V

    .line 200
    :cond_2
    if-eqz v3, :cond_5

    .line 202
    invoke-virtual {v3}, Lio/casper/android/c/b/b/a/a/h/b;->b()Lio/casper/android/c/b/b/a/a/h/a/a;

    move-result-object v0

    .line 204
    const-string v1, "pref_snapchat_chat_session_ping_enabled"

    invoke-virtual {v3}, Lio/casper/android/c/b/b/a/a/h/b;->a()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/l/t;->c(Ljava/lang/String;Z)V

    .line 206
    if-eqz v0, :cond_5

    .line 208
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/h/a/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/h/a/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/h/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v1, :cond_3

    .line 213
    const-string v3, "pref_snapchat_chat_connect_app_version"

    invoke-virtual {p0, v3, v1}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_3
    if-eqz v2, :cond_4

    .line 217
    const-string v1, "pref_snapchat_chat_connect_platform"

    invoke-virtual {p0, v1, v2}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_4
    if-eqz v0, :cond_5

    .line 221
    const-string v1, "pref_snapchat_chat_connect_version"

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_5
    if-eqz v4, :cond_6

    .line 230
    invoke-virtual {v4}, Lio/casper/android/c/b/b/a/a/h/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "pref_snapchat_arxan_enabled"

    invoke-virtual {v4}, Lio/casper/android/c/b/b/a/a/h/a;->a()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/l/t;->c(Ljava/lang/String;Z)V

    .line 233
    if-eqz v0, :cond_6

    .line 234
    const-string v1, "pref_snapchat_arxan_server"

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_6
    if-eqz v5, :cond_7

    .line 241
    invoke-virtual {v5}, Lio/casper/android/c/b/b/a/a/h/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "pref_snapchat_zelta_enabled"

    invoke-virtual {v5}, Lio/casper/android/c/b/b/a/a/h/g;->a()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/l/t;->c(Ljava/lang/String;Z)V

    .line 245
    if-eqz v0, :cond_7

    .line 246
    const-string v1, "pref_snapchat_zelta_server"

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_7
    if-eqz v6, :cond_c

    .line 253
    iget-object v0, p0, Lio/casper/android/l/t;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v0}, Lio/casper/android/l/k;->d()V

    .line 255
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/h/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/h/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 258
    if-eqz v0, :cond_8

    .line 259
    const-string v2, "pref_snapchat_server"

    invoke-virtual {p0, v2, v0}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_8
    if-eqz v1, :cond_9

    .line 263
    const-string v0, "pref_snapchat_version"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_9
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/h/e;->c()Ljava/util/Map;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_c

    .line 269
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/b/b/a/a/h/d;

    .line 274
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 276
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/h/d;->a()Ljava/util/Map;

    move-result-object v3

    .line 277
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/h/d;->b()Ljava/util/Map;

    move-result-object v0

    .line 279
    if-eqz v3, :cond_b

    .line 280
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lio/casper/android/l/t;->a(Ljava/lang/String;Ljava/util/Map;I)V

    .line 283
    :cond_b
    if-eqz v0, :cond_a

    .line 284
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lio/casper/android/l/t;->a(Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_0

    .line 295
    :cond_c
    if-eqz v7, :cond_f

    .line 297
    invoke-virtual {v7}, Lio/casper/android/c/b/b/a/a/h/c;->a()Z

    move-result v0

    .line 298
    invoke-virtual {v7}, Lio/casper/android/c/b/b/a/a/h/c;->b()Z

    move-result v1

    .line 299
    invoke-virtual {v7}, Lio/casper/android/c/b/b/a/a/h/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v7}, Lio/casper/android/c/b/b/a/a/h/c;->d()Ljava/lang/String;

    move-result-object v3

    .line 302
    const-string v4, "pref_snapchat_login_client_auth_request"

    invoke-virtual {p0, v4, v0}, Lio/casper/android/l/t;->c(Ljava/lang/String;Z)V

    .line 303
    const-string v0, "pref_snapchat_login_google_auth_request"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->c(Ljava/lang/String;Z)V

    .line 305
    if-eqz v2, :cond_d

    .line 306
    const-string v0, "pref_snapchat_login_version"

    invoke-virtual {p0, v0, v2}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 311
    const-string v0, "ios"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 312
    const-string v0, "pref_snapchat_login_mode"

    const-string v1, "ios"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_e
    const-string v0, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 316
    const-string v0, "pref_snapchat_login_mode"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_f
    if-eqz v8, :cond_10

    .line 324
    const-string v0, "pref_snapchat_version_text"

    invoke-virtual {p0, v0, v8}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_10
    return-void
.end method

.method public a(Lio/casper/android/n/a/c/b/s;)V
    .locals 2

    .prologue
    .line 165
    const-string v0, "pref_snapchat_chat_messaging_gateway_info"

    iget-object v1, p0, Lio/casper/android/l/t;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {v1, p1}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "pref_snapchat_zelta_server"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 363
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 364
    invoke-virtual {v3, p2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 366
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lio/casper/android/l/t;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v0, p1}, Lio/casper/android/l/k;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 369
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 377
    :goto_1
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lio/casper/android/l/t;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v0, p1}, Lio/casper/android/l/k;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 372
    :goto_2
    :try_start_2
    const-string v2, "SnapchatManager"

    const-string v3, "Storing Dynamic Endpoint Params or Headers failed with Exception"

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 371
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    const-string v0, "pref_snapchat_version"

    sget-object v1, Lio/casper/android/n/a;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 69
    const-string v0, "pref_snapchat_max_simultaneous_downloads_snaps"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 73
    const-string v0, "pref_snapchat_max_simultaneous_downloads_stories"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 77
    const-string v0, "pref_snapchat_photo_snap_compression"

    const/16 v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "pref_snapchat_login_google_auth_request"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    const-string v0, "pref_snapchat_login_version"

    sget-object v1, Lio/casper/android/n/a;->APP_VERSION_LOGIN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    const-string v0, "pref_snapchat_login_mode"

    const-string v1, "ios"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const-string v0, "pref_snapchat_arxan_server"

    const-string v1, "http://arxan.casper.io"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string v0, "pref_snapchat_zelta_server"

    const-string v1, "https://fast-refuge-6073.herokuapp.com"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 118
    const-string v0, "pref_snapchat_arxan_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 122
    const-string v0, "pref_snapchat_zelta_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    const-string v0, "pref_snapchat_version_text"

    const-string v1, "Unknown API Version"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 7

    .prologue
    .line 131
    const-string v4, "Android"

    .line 132
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 133
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 134
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    const-string v5, "Android SDK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "App Runtime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "BlackBerry"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Player"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    :cond_0
    const-string v4, "Android"

    .line 139
    const-string v3, "SM-G900I"

    .line 140
    const-string v2, "4.4.2"

    .line 141
    const-string v1, "G900IDVU1ANK1"

    .line 142
    const/16 v0, 0x13

    .line 145
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Snapchat/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lio/casper/android/l/t;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gzip)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 149
    const-string v0, "pref_snapchat_chat_session_ping_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    const-string v0, "pref_snapchat_chat_connect_version"

    const-string v1, "19"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const-string v0, "pref_snapchat_chat_connect_app_version"

    const-string v1, "9.26.0.1"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    const-string v0, "pref_snapchat_chat_connect_platform"

    const-string v1, "ios"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Lio/casper/android/n/a/c/b/s;
    .locals 4

    .prologue
    .line 169
    const-string v0, "pref_snapchat_chat_messaging_gateway_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lio/casper/android/l/t;->mJsonSerializer:Lio/casper/android/util/e;

    const-class v2, Lio/casper/android/n/a/c/b/s;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/s;

    return-object v0
.end method
