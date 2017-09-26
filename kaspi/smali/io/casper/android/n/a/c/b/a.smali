.class public Lio/casper/android/n/a/c/b/a;
.super Lio/casper/android/n/a/c/b/i;
.source "AddedFriend.java"


# instance fields
.field private addSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "add_source"
    .end annotation
.end field

.field private addSourceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "add_source_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lio/casper/android/n/a/c/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/n/a/c/b/a;->addSource:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lio/casper/android/n/a/c/b/a;->addSource:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/n/a/c/b/a;->addSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lio/casper/android/n/a/c/b/a;->addSourceType:Ljava/lang/String;

    .line 27
    return-void
.end method
