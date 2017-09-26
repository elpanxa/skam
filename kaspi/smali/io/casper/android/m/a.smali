.class public Lio/casper/android/m/a;
.super Ljava/lang/Object;
.source "StoryHelperContainer.java"


# static fields
.field public static final TYPE_FRIEND:I = 0x1

.field public static final TYPE_MINE:I


# instance fields
.field private friendStoryContainer:Lio/casper/android/n/a/c/b/j;

.field private myStories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/t;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Lio/casper/android/n/a/c/b/j;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/casper/android/m/a;->friendStoryContainer:Lio/casper/android/n/a/c/b/j;

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lio/casper/android/m/a;->type:I

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/casper/android/m/a;->myStories:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lio/casper/android/m/a;->type:I

    .line 17
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
    .line 25
    iget-object v0, p0, Lio/casper/android/m/a;->myStories:Ljava/util/List;

    return-object v0
.end method

.method public b()Lio/casper/android/n/a/c/b/j;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/m/a;->friendStoryContainer:Lio/casper/android/n/a/c/b/j;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lio/casper/android/m/a;->type:I

    return v0
.end method
