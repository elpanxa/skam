.class public Lio/casper/android/n/a/c/b/k;
.super Lio/casper/android/e/a/d;
.source "FriendStoryContainer.java"


# instance fields
.field private flushableStoryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flushable_story_id"
    .end annotation
.end field

.field private story:Lio/casper/android/n/a/c/b/x;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story"
    .end annotation
.end field

.field private viewed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewed"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/a/c/b/x;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/n/a/c/b/k;->story:Lio/casper/android/n/a/c/b/x;

    return-object v0
.end method

.method public a(Lio/casper/android/n/a/c/b/x;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lio/casper/android/n/a/c/b/k;->story:Lio/casper/android/n/a/c/b/x;

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lio/casper/android/n/a/c/b/k;->flushableStoryId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lio/casper/android/n/a/c/b/k;->viewed:Z

    .line 35
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/k;->viewed:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/casper/android/n/a/c/b/k;->flushableStoryId:Ljava/lang/String;

    return-object v0
.end method
