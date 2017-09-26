.class public final Lio/casper/android/util/h;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lio/casper/android/util/h;->mWidth:I

    .line 19
    iput p2, p0, Lio/casper/android/util/h;->mHeight:I

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lio/casper/android/util/h;->mWidth:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lio/casper/android/util/h;->mHeight:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    instance-of v2, p1, Lio/casper/android/util/h;

    if-eqz v2, :cond_0

    .line 59
    check-cast p1, Lio/casper/android/util/h;

    .line 60
    iget v2, p0, Lio/casper/android/util/h;->mWidth:I

    iget v3, p1, Lio/casper/android/util/h;->mWidth:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lio/casper/android/util/h;->mHeight:I

    iget v3, p1, Lio/casper/android/util/h;->mHeight:I

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 81
    iget v0, p0, Lio/casper/android/util/h;->mHeight:I

    iget v1, p0, Lio/casper/android/util/h;->mWidth:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lio/casper/android/util/h;->mWidth:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lio/casper/android/util/h;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/casper/android/util/h;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
