.class public Lio/casper/android/c/b/b/a/a/h/f;
.super Ljava/lang/Object;
.source "Snapchat.java"


# instance fields
.field private arxan:Lio/casper/android/c/b/b/a/a/h/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "arxan"
    .end annotation
.end field

.field private chat:Lio/casper/android/c/b/b/a/a/h/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat"
    .end annotation
.end field

.field private login:Lio/casper/android/c/b/b/a/a/h/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login"
    .end annotation
.end field

.field private maxSimultaneousDownloadsSnaps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_simultaneous_downloads_snaps"
    .end annotation
.end field

.field private maxSimultaneousDownloadsStories:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_simultaneous_downloads_stories"
    .end annotation
.end field

.field private photoSnapCompression:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photo_snap_compression"
    .end annotation
.end field

.field private requests:Lio/casper/android/c/b/b/a/a/h/e;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requests"
    .end annotation
.end field

.field private versionText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version_text"
    .end annotation
.end field

.field private zelta:Lio/casper/android/c/b/b/a/a/h/g;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zelta"
    .end annotation
.end field


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lio/casper/android/c/b/b/a/a/h/f;->maxSimultaneousDownloadsSnaps:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lio/casper/android/c/b/b/a/a/h/f;->maxSimultaneousDownloadsStories:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lio/casper/android/c/b/b/a/a/h/f;->photoSnapCompression:I

    return v0
.end method

.method public d()Lio/casper/android/c/b/b/a/a/h/b;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/f;->chat:Lio/casper/android/c/b/b/a/a/h/b;

    return-object v0
.end method

.method public e()Lio/casper/android/c/b/b/a/a/h/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/f;->arxan:Lio/casper/android/c/b/b/a/a/h/a;

    return-object v0
.end method

.method public f()Lio/casper/android/c/b/b/a/a/h/g;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/f;->zelta:Lio/casper/android/c/b/b/a/a/h/g;

    return-object v0
.end method

.method public g()Lio/casper/android/c/b/b/a/a/h/e;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/f;->requests:Lio/casper/android/c/b/b/a/a/h/e;

    return-object v0
.end method

.method public h()Lio/casper/android/c/b/b/a/a/h/c;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/f;->login:Lio/casper/android/c/b/b/a/a/h/c;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/f;->versionText:Ljava/lang/String;

    return-object v0
.end method
