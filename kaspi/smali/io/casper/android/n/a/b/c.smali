.class public Lio/casper/android/n/a/b/c;
.super Lio/casper/android/n/a/b/a/a;
.source "AuthStoryThumbnailRequest.java"


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
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lio/casper/android/n/a/b/c;->mStory:Lio/casper/android/n/a/c/b/x;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {p2}, Lio/casper/android/n/a/c/b/x;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v1, "story_ids"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/n/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "/bq/auth_story_thumbnails"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 43
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lio/casper/android/n/a/a/d;

    iget-object v1, p0, Lio/casper/android/n/a/b/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/n/a/b/c;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/a/d;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    return-object v0
.end method
