.class public Lio/casper/android/n/a/c/b/j;
.super Ljava/lang/Object;
.source "FriendStoriesContainer.java"


# instance fields
.field private stories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnails:Lio/casper/android/n/a/c/b/o;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnails"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
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
            "Lio/casper/android/n/a/c/b/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/n/a/c/b/j;->stories:Ljava/util/List;

    return-object v0
.end method

.method public b()Lio/casper/android/n/a/c/b/o;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/n/a/c/b/j;->thumbnails:Lio/casper/android/n/a/c/b/o;

    return-object v0
.end method
