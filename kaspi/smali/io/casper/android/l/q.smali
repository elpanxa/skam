.class public Lio/casper/android/l/q;
.super Lio/casper/android/l/k;
.source "SavedMediaManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .locals 3

    .prologue
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    if-eqz p3, :cond_0

    const-string v0, ".mp4"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/l/q;->mSavedSnapsFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 25
    :cond_0
    const-string v0, ".jpg"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3

    .prologue
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {}, Lio/casper/android/n/e/b;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    if-eqz p2, :cond_0

    const-string v0, ".mp4"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/l/q;->mSentSnapsFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 58
    :cond_0
    const-string v0, ".jpg"

    goto :goto_0
.end method

.method public b(Z)Ljava/io/File;
    .locals 5

    .prologue
    .line 70
    if-eqz p1, :cond_0

    const-string v0, ".jpg"

    .line 71
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/l/q;->mExternalCacheFolder:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "share~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 70
    :cond_0
    const-string v0, ".mp4"

    goto :goto_0
.end method

.method public d(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->k()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->q()Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->q()Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;
    .locals 5

    .prologue
    .line 65
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".jpg"

    .line 66
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/l/q;->mExternalCacheFolder:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snap~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 65
    :cond_0
    const-string v0, ".mp4"

    goto :goto_0
.end method

.method public f(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->q()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public f(Lio/casper/android/n/a/c/b/w;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lio/casper/android/l/q;->a(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v0

    .line 81
    invoke-virtual {p0, p1}, Lio/casper/android/l/q;->d(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v1

    .line 82
    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 83
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/w;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/jpeg"

    .line 84
    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 85
    return-void

    .line 83
    :cond_0
    const-string v0, "video/mp4"

    goto :goto_0
.end method

.method public g(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;
    .locals 5

    .prologue
    .line 75
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".jpg"

    .line 76
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/l/q;->mExternalCacheFolder:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "story~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 75
    :cond_0
    const-string v0, ".mp4"

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/q;->mSnapTagsFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public h(Lio/casper/android/n/a/c/b/x;)V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lio/casper/android/l/q;->a(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v0

    .line 89
    invoke-virtual {p0, p1}, Lio/casper/android/l/q;->f(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v1

    .line 90
    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 91
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/jpeg"

    .line 92
    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 93
    return-void

    .line 91
    :cond_0
    const-string v0, "video/mp4"

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lio/casper/android/l/q;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
