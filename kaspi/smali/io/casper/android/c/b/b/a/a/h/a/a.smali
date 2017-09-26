.class public Lio/casper/android/c/b/b/a/a/h/a/a;
.super Ljava/lang/Object;
.source "Connect.java"


# instance fields
.field private appVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appVersion"
    .end annotation
.end field

.field private platform:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/a/a;->version:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/a/a;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/a/a;->appVersion:Ljava/lang/String;

    return-object v0
.end method
