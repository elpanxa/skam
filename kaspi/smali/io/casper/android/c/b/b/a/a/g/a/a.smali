.class public Lio/casper/android/c/b/b/a/a/g/a/a;
.super Ljava/lang/Object;
.source "APIRouting.java"


# instance fields
.field private privateServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "private_server"
    .end annotation
.end field

.field private server:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/a/a;->server:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/g/a/a;->privateServer:Ljava/lang/String;

    return-object v0
.end method
