.class public Lio/casper/android/n/a/b/b;
.super Lio/casper/android/n/a/b/a/a;
.source "AuthStoryBlobRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Lio/casper/android/n/a/a/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private mStory:Lio/casper/android/n/a/c/b/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lio/casper/android/n/a/b/b;->mStory:Lio/casper/android/n/a/c/b/x;

    .line 21
    const-string v0, "story_id"

    invoke-virtual {p2}, Lio/casper/android/n/a/c/b/x;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "/bq/auth_story_blob"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Lio/casper/android/n/a/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lio/casper/android/n/a/a/a;

    iget-object v1, p0, Lio/casper/android/n/a/b/b;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/n/a/b/b;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/a/a;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    return-object v0
.end method
