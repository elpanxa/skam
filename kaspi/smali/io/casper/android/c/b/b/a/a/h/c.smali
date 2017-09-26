.class public Lio/casper/android/c/b/b/a/a/h/c;
.super Ljava/lang/Object;
.source "Login.java"


# instance fields
.field private clientAuthRequest:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_auth_request"
    .end annotation
.end field

.field private googleAuthRequest:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "google_auth_request"
    .end annotation
.end field

.field private mode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field

.field private snapchatVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snapchat_version"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/h/c;->clientAuthRequest:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/h/c;->googleAuthRequest:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/c;->snapchatVersion:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/c;->mode:Ljava/lang/String;

    return-object v0
.end method
