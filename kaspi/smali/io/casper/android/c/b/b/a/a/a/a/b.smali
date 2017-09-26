.class public Lio/casper/android/c/b/b/a/a/a/a/b;
.super Ljava/lang/Object;
.source "StartAppConfiguration.java"


# instance fields
.field private displayNativeSnaps:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_native_snaps"
    .end annotation
.end field

.field private displayNativeStories:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_native_stories"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/a/a/b;->displayNativeSnaps:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/a/a/b;->displayNativeStories:Z

    return v0
.end method
