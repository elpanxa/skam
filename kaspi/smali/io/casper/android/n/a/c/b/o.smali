.class public Lio/casper/android/n/a/c/b/o;
.super Ljava/lang/Object;
.source "LiveStoryThumbnails.java"


# instance fields
.field private unviewed:Lio/casper/android/n/a/c/b/n;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unviewed"
    .end annotation
.end field

.field private viewed:Lio/casper/android/n/a/c/b/n;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewed"
    .end annotation
.end field


# virtual methods
.method public a()Lio/casper/android/n/a/c/b/n;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/n/a/c/b/o;->unviewed:Lio/casper/android/n/a/c/b/n;

    return-object v0
.end method
