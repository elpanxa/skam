.class public Lio/casper/android/l/k;
.super Lio/casper/android/l/n;
.source "InternalCacheManager.java"


# instance fields
.field public mAppleEmojiFolder:Ljava/io/File;

.field public mCacheFolder:Ljava/io/File;

.field public mEmojiFolder:Ljava/io/File;

.field public mRequestsFolder:Ljava/io/File;

.field public mTempFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lio/casper/android/l/n;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mInternalDataFolder:Ljava/io/File;

    const-string v2, "Requests"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/k;->mRequestsFolder:Ljava/io/File;

    .line 26
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mInternalDataFolder:Ljava/io/File;

    const-string v2, "Cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    const-string v2, "Temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/k;->mTempFolder:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mInternalDataFolder:Ljava/io/File;

    const-string v2, "Emoji"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/k;->mEmojiFolder:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mEmojiFolder:Ljava/io/File;

    const-string v2, "Apple"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/k;->mAppleEmojiFolder:Ljava/io/File;

    .line 32
    iget-object v0, p0, Lio/casper/android/l/k;->mRequestsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    iget-object v0, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 34
    iget-object v0, p0, Lio/casper/android/l/k;->mTempFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 36
    iget-object v0, p0, Lio/casper/android/l/k;->mEmojiFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 37
    iget-object v0, p0, Lio/casper/android/l/k;->mAppleEmojiFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mTempFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lio/casper/android/c/b/b/a/b;)Ljava/io/File;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snap~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "story~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lio/casper/android/n/b/d/a;)Ljava/io/File;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/casper/android/n/b/d/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    .line 42
    const-string v0, "/"

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "*"

    const-string v2, "_global"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/l/k;->mRequestsFolder:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".properties"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/casper/android/l/k$1;

    invoke-direct {v1, p0, p1}, Lio/casper/android/l/k$1;-><init>(Lio/casper/android/l/k;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/io/File;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mExternalCacheFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;
    .locals 4

    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snap~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~overlay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "story~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    .line 60
    const-string v0, "/"

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "*"

    const-string v2, "_global"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/l/k;->mRequestsFolder:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".properties"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_1

    .line 234
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 235
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {p0, v4}, Lio/casper/android/l/k;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    :cond_1
    return-object v1
.end method

.method public b(Lio/casper/android/c/b/b/a/b;)Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lio/casper/android/l/k;->a(Lio/casper/android/c/b/b/a/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/k;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public b(Lio/casper/android/n/b/d/a;)Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lio/casper/android/l/k;->a(Lio/casper/android/n/b/d/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/k;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public c(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "story~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~overlay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/k;->mCacheFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~overlay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/casper/android/l/k$2;

    invoke-direct {v1, p0}, Lio/casper/android/l/k$2;-><init>(Lio/casper/android/l/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 215
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    return-void
.end method

.method public c(Lio/casper/android/n/a/c/b/w;)Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lio/casper/android/l/k;->a(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/k;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lio/casper/android/l/k;->mRequestsFolder:Ljava/io/File;

    invoke-virtual {p0, v0}, Lio/casper/android/l/k;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public d(Lio/casper/android/n/a/c/b/x;)Z
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lio/casper/android/l/k;->a(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/k;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public e(Lio/casper/android/n/a/c/b/x;)Z
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lio/casper/android/l/k;->b(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/k;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
