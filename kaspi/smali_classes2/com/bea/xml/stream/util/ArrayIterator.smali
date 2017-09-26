.class public final Lcom/bea/xml/stream/util/ArrayIterator;
.super Ljava/lang/Object;
.source "ArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final array:[Ljava/lang/Object;

.field private index:I

.field private final maxIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/bea/xml/stream/util/ArrayIterator;-><init>([Ljava/lang/Object;II)V

    .line 29
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 33
    :cond_0
    array-length v0, p1

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 34
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 35
    :cond_2
    iput-object p1, p0, Lcom/bea/xml/stream/util/ArrayIterator;->array:[Ljava/lang/Object;

    .line 36
    iput p2, p0, Lcom/bea/xml/stream/util/ArrayIterator;->index:I

    .line 37
    add-int v0, p3, p2

    iput v0, p0, Lcom/bea/xml/stream/util/ArrayIterator;->maxIndex:I

    .line 38
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/bea/xml/stream/util/ArrayIterator;->index:I

    iget v1, p0, Lcom/bea/xml/stream/util/ArrayIterator;->maxIndex:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 43
    iget v0, p0, Lcom/bea/xml/stream/util/ArrayIterator;->index:I

    iget v1, p0, Lcom/bea/xml/stream/util/ArrayIterator;->maxIndex:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/util/ArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/bea/xml/stream/util/ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bea/xml/stream/util/ArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
