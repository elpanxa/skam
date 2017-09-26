.class public Lio/casper/android/n/a/b/x$a;
.super Ljava/lang/Object;
.source "UpdateStoriesRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/a/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mFriendStoryContainer:Lio/casper/android/n/a/c/b/k;

.field private mScreenshot:Z

.field private mStory:Lio/casper/android/n/a/c/b/x;


# direct methods
.method public constructor <init>(Lio/casper/android/n/a/c/b/x;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lio/casper/android/n/a/b/x$a;->mStory:Lio/casper/android/n/a/c/b/x;

    .line 108
    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/n/a/c/b/k;)Lio/casper/android/n/a/b/x$a;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lio/casper/android/n/a/b/x$a;->mFriendStoryContainer:Lio/casper/android/n/a/c/b/k;

    .line 134
    return-object p0
.end method

.method public a(Z)Lio/casper/android/n/a/b/x$a;
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lio/casper/android/n/a/b/x$a;->mScreenshot:Z

    .line 125
    return-object p0
.end method

.method public a()Lio/casper/android/n/a/c/b/x;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lio/casper/android/n/a/b/x$a;->mStory:Lio/casper/android/n/a/c/b/x;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lio/casper/android/n/a/b/x$a;->mScreenshot:Z

    return v0
.end method

.method public c()Lio/casper/android/n/a/c/b/k;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lio/casper/android/n/a/b/x$a;->mFriendStoryContainer:Lio/casper/android/n/a/c/b/k;

    return-object v0
.end method
