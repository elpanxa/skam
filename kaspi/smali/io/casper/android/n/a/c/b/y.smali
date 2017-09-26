.class public Lio/casper/android/n/a/c/b/y;
.super Ljava/lang/Object;
.source "StoryExtras.java"


# instance fields
.field private screenshot_count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshot_count"
    .end annotation
.end field

.field private view_count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "view_count"
    .end annotation
.end field


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lio/casper/android/n/a/c/b/y;->view_count:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lio/casper/android/n/a/c/b/y;->screenshot_count:I

    return v0
.end method
