.class public Lio/casper/android/c/b/b/a/a/d/c;
.super Ljava/lang/Object;
.source "Google.java"


# instance fields
.field private attestationConfiguration:Lio/casper/android/c/b/b/a/a/d/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attestation"
    .end annotation
.end field

.field private authConfiguration:Lio/casper/android/c/b/b/a/a/d/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth"
    .end annotation
.end field

.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/d/c;->enabled:Z

    return v0
.end method

.method public b()Lio/casper/android/c/b/b/a/a/d/a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/d/c;->attestationConfiguration:Lio/casper/android/c/b/b/a/a/d/a;

    return-object v0
.end method

.method public c()Lio/casper/android/c/b/b/a/a/d/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/d/c;->authConfiguration:Lio/casper/android/c/b/b/a/a/d/b;

    return-object v0
.end method
