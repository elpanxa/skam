.class public Lio/casper/android/n/a/c/j;
.super Ljava/lang/Object;
.source "StoriesResponse.java"


# instance fields
.field private friendStories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend_stories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private myStories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "my_stories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/n/a/c/j;->myStories:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lio/casper/android/n/a/c/j;->friendStories:Ljava/util/List;

    return-object v0
.end method
