.class public Lio/casper/android/n/a/b/j;
.super Lio/casper/android/n/a/b/a/a;
.source "LiveStoryThumbnailRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mLiveStoryThumbnail:Lio/casper/android/n/a/c/b/n;

.field private mStory:Lio/casper/android/n/a/c/b/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;Lio/casper/android/n/a/c/b/n;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lio/casper/android/n/a/b/j;->mStory:Lio/casper/android/n/a/c/b/x;

    .line 21
    iput-object p3, p0, Lio/casper/android/n/a/b/j;->mLiveStoryThumbnail:Lio/casper/android/n/a/c/b/n;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/n/a/b/j;->mLiveStoryThumbnail:Lio/casper/android/n/a/c/b/n;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/n;->a()Z

    move-result v0

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/n/a/b/j;->mLiveStoryThumbnail:Lio/casper/android/n/a/c/b/n;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/casper/android/c/c/f/b;->GET:Lio/casper/android/c/c/f/b;

    goto :goto_0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lio/casper/android/n/a/a/b;

    iget-object v1, p0, Lio/casper/android/n/a/b/j;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/n/a/b/j;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/a/b;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/n/a/b/j;->mLiveStoryThumbnail:Lio/casper/android/n/a/c/b/n;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
