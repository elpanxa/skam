.class public abstract Lcom/startapp/android/publish/f/a/c/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/f/a/c/b$a;
    }
.end annotation


# instance fields
.field private final a:I

.field protected final b:B

.field protected final c:I

.field private final d:I

.field private final e:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/16 v1, 0x3d

    iput-byte v1, p0, Lcom/startapp/android/publish/f/a/c/b;->b:B

    .line 181
    iput p1, p0, Lcom/startapp/android/publish/f/a/c/b;->a:I

    .line 182
    iput p2, p0, Lcom/startapp/android/publish/f/a/c/b;->d:I

    .line 183
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 v1, 0x1

    .line 184
    :goto_0
    if-eqz v1, :cond_0

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    :cond_0
    iput v0, p0, Lcom/startapp/android/publish/f/a/c/b;->c:I

    .line 185
    iput p4, p0, Lcom/startapp/android/publish/f/a/c/b;->e:I

    .line 186
    return-void

    :cond_1
    move v1, v0

    .line 183
    goto :goto_0
.end method

.method private b(Lcom/startapp/android/publish/f/a/c/b$a;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v0, p1, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/startapp/android/publish/f/a/c/b;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    .line 224
    iput v3, p1, Lcom/startapp/android/publish/f/a/c/b$a;->d:I

    .line 225
    iput v3, p1, Lcom/startapp/android/publish/f/a/c/b$a;->e:I

    .line 231
    :goto_0
    iget-object v0, p1, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    return-object v0

    .line 227
    :cond_0
    iget-object v0, p1, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 228
    iget-object v1, p1, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    iget-object v2, p1, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v0, p1, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0x2000

    return v0
.end method

.method a(Lcom/startapp/android/publish/f/a/c/b$a;)I
    .locals 2

    .prologue
    .line 205
    iget-object v0, p1, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/startapp/android/publish/f/a/c/b$a;->d:I

    iget v1, p1, Lcom/startapp/android/publish/f/a/c/b$a;->e:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract a([BIILcom/startapp/android/publish/f/a/c/b$a;)V
.end method

.method protected abstract a(B)Z
.end method

.method protected a(ILcom/startapp/android/publish/f/a/c/b$a;)[B
    .locals 2

    .prologue
    .line 241
    iget-object v0, p2, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    array-length v0, v0

    iget v1, p2, Lcom/startapp/android/publish/f/a/c/b$a;->d:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 242
    :cond_0
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/f/a/c/b;->b(Lcom/startapp/android/publish/f/a/c/b$a;)[B

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    goto :goto_0
.end method

.method b([BIILcom/startapp/android/publish/f/a/c/b$a;)I
    .locals 3

    .prologue
    .line 264
    iget-object v0, p4, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0, p4}, Lcom/startapp/android/publish/f/a/c/b;->a(Lcom/startapp/android/publish/f/a/c/b$a;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 266
    iget-object v1, p4, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    iget v2, p4, Lcom/startapp/android/publish/f/a/c/b$a;->e:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget v1, p4, Lcom/startapp/android/publish/f/a/c/b$a;->e:I

    add-int/2addr v1, v0

    iput v1, p4, Lcom/startapp/android/publish/f/a/c/b$a;->e:I

    .line 268
    iget v1, p4, Lcom/startapp/android/publish/f/a/c/b$a;->e:I

    iget v2, p4, Lcom/startapp/android/publish/f/a/c/b$a;->d:I

    if-lt v1, v2, :cond_0

    .line 269
    const/4 v1, 0x0

    iput-object v1, p4, Lcom/startapp/android/publish/f/a/c/b$a;->c:[B

    .line 273
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p4, Lcom/startapp/android/publish/f/a/c/b$a;->f:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object p1

    .line 397
    :cond_1
    new-instance v0, Lcom/startapp/android/publish/f/a/c/b$a;

    invoke-direct {v0}, Lcom/startapp/android/publish/f/a/c/b$a;-><init>()V

    .line 398
    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/startapp/android/publish/f/a/c/b;->a([BIILcom/startapp/android/publish/f/a/c/b$a;)V

    .line 399
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/startapp/android/publish/f/a/c/b;->a([BIILcom/startapp/android/publish/f/a/c/b$a;)V

    .line 400
    iget v1, v0, Lcom/startapp/android/publish/f/a/c/b$a;->d:I

    iget v2, v0, Lcom/startapp/android/publish/f/a/c/b$a;->e:I

    sub-int/2addr v1, v2

    new-array p1, v1, [B

    .line 401
    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/startapp/android/publish/f/a/c/b;->b([BIILcom/startapp/android/publish/f/a/c/b$a;)I

    goto :goto_0
.end method

.method protected c([B)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 464
    if-nez p1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-byte v3, p1, v1

    .line 468
    const/16 v4, 0x3d

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/startapp/android/publish/f/a/c/b;->a(B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 469
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 467
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public d([B)J
    .locals 6

    .prologue
    .line 486
    array-length v0, p1

    iget v1, p0, Lcom/startapp/android/publish/f/a/c/b;->a:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/startapp/android/publish/f/a/c/b;->a:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/startapp/android/publish/f/a/c/b;->d:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 487
    iget v2, p0, Lcom/startapp/android/publish/f/a/c/b;->c:I

    if-lez v2, :cond_0

    .line 489
    iget v2, p0, Lcom/startapp/android/publish/f/a/c/b;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/startapp/android/publish/f/a/c/b;->c:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/startapp/android/publish/f/a/c/b;->e:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 491
    :cond_0
    return-wide v0
.end method
