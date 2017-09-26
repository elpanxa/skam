.class public Lio/casper/android/c/b/b/a/a/e/a;
.super Ljava/lang/Object;
.source "Imoji.java"


# instance fields
.field private apiClientID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api_client_id"
    .end annotation
.end field

.field private apiToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api_token"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/e/a;->apiClientID:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/e/a;->apiToken:Ljava/lang/String;

    return-object v0
.end method
