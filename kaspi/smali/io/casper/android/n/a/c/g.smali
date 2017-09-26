.class public Lio/casper/android/n/a/c/g;
.super Ljava/lang/Object;
.source "FriendsResponse.java"


# instance fields
.field private addedFriends:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "added_friends"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private bests:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private friends:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/i;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/n/a/c/g;->bests:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/n/a/c/g;->friends:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/n/a/c/g;->addedFriends:Ljava/util/List;

    return-object v0
.end method
