.class public Lio/casper/android/c/b/b/a/a/c/a;
.super Ljava/lang/Object;
.source "Auth.java"


# instance fields
.field private bitstamp:Lio/casper/android/c/b/b/a/a/c/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitstamp"
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
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/c/a;->server:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lio/casper/android/c/b/b/a/a/c/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/c/a;->bitstamp:Lio/casper/android/c/b/b/a/a/c/b;

    return-object v0
.end method
