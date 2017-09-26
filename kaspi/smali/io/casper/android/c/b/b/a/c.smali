.class public Lio/casper/android/c/b/b/a/c;
.super Lio/casper/android/c/b/b/b;
.source "SnapchatAuthSettings.java"


# instance fields
.field private clientAuthRequired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_auth_required"
    .end annotation
.end field

.field private forceClearHeaders:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_clear_headers"
    .end annotation
.end field

.field private forceClearParams:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_clear_params"
    .end annotation
.end field

.field private googleAuthRequired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "google_auth_required"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/c;->forceClearHeaders:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/c;->forceClearParams:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/c;->googleAuthRequired:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/c;->clientAuthRequired:Z

    return v0
.end method
