.class public Lio/casper/android/c/b/b/a/a/h/e;
.super Ljava/lang/Object;
.source "Requests.java"


# instance fields
.field private requestEndpoints:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/casper/android/c/b/b/a/a/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private server:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server"
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
    .line 19
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/e;->server:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/e;->version:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/casper/android/c/b/b/a/a/h/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/e;->requestEndpoints:Ljava/util/Map;

    return-object v0
.end method
