.class public Lio/casper/android/c/b/b/a/a/f/a;
.super Ljava/lang/Object;
.source "Notifications.java"


# instance fields
.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private intervalOverride:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interval_override"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/f/a;->enabled:Z

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lio/casper/android/c/b/b/a/a/f/a;->intervalOverride:J

    return-wide v0
.end method
