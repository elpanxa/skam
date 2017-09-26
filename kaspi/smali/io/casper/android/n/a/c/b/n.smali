.class public Lio/casper/android/n/a/c/b/n;
.super Ljava/lang/Object;
.source "LiveStoryThumbnail.java"


# instance fields
.field private needsAuth:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "needs_auth"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/n;->needsAuth:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/n/a/c/b/n;->url:Ljava/lang/String;

    return-object v0
.end method
