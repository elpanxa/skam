.class public Lio/casper/android/c/b/b/a/a/a/b/g;
.super Ljava/lang/Object;
.source "StartAppIdentifiers.java"


# instance fields
.field private accountID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_id"
    .end annotation
.end field

.field private appID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/b/g;->accountID:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/a/b/g;->appID:Ljava/lang/String;

    return-object v0
.end method
