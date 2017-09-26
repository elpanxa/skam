.class public Lio/casper/android/ui/g;
.super Ljava/lang/Object;
.source "NativeAdObject.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "LoadingObject"

    iput-object v0, p0, Lio/casper/android/ui/g;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 9
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 14
    :goto_0
    return v0

    .line 10
    :cond_0
    instance-of v0, p1, Lio/casper/android/ui/g;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 12
    :cond_1
    check-cast p1, Lio/casper/android/ui/g;

    .line 14
    iget-object v0, p0, Lio/casper/android/ui/g;->name:Ljava/lang/String;

    iget-object v1, p1, Lio/casper/android/ui/g;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/ui/g;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
