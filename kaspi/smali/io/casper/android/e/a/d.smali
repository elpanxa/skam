.class public Lio/casper/android/e/a/d;
.super Ljava/lang/Object;
.source "DatabaseModel.java"


# instance fields
.field private _id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 1

    .prologue
    .line 12
    iput-wide p1, p0, Lio/casper/android/e/a/d;->_id:J

    .line 13
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    if-ne p0, p1, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    instance-of v2, p1, Lio/casper/android/e/a/d;

    if-nez v2, :cond_2

    move v0, v1

    .line 23
    goto :goto_0

    .line 26
    :cond_2
    check-cast p1, Lio/casper/android/e/a/d;

    .line 27
    iget-wide v2, p0, Lio/casper/android/e/a/d;->_id:J

    iget-wide v4, p1, Lio/casper/android/e/a/d;->_id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 8
    iget-wide v0, p0, Lio/casper/android/e/a/d;->_id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 33
    iget-wide v0, p0, Lio/casper/android/e/a/d;->_id:J

    iget-wide v2, p0, Lio/casper/android/e/a/d;->_id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
