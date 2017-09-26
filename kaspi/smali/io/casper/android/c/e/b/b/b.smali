.class public Lio/casper/android/c/e/b/b/b;
.super Ljava/lang/Object;
.source "ZeltaSettings.java"


# instance fields
.field private forceExpireCached:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_expire_cached"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lio/casper/android/c/e/b/b/b;->forceExpireCached:Z

    return v0
.end method
