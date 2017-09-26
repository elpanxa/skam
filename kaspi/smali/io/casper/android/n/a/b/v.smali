.class public Lio/casper/android/n/a/b/v;
.super Lio/casper/android/n/a/b/a/a;
.source "StoryThumbnailRequest.java"


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
.field private mStory:Lio/casper/android/n/a/c/b/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lio/casper/android/n/a/b/v;->mStory:Lio/casper/android/n/a/c/b/x;

    .line 20
    const-string v0, "story_id"

    invoke-virtual {p2}, Lio/casper/android/n/a/c/b/x;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "/bq/story_thumbnail"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lio/casper/android/c/c/f/b;->GET:Lio/casper/android/c/c/f/b;

    return-object v0
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
    .line 41
    new-instance v0, Lio/casper/android/n/a/a/d;

    iget-object v1, p0, Lio/casper/android/n/a/b/v;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/n/a/b/v;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/a/d;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    return-object v0
.end method
