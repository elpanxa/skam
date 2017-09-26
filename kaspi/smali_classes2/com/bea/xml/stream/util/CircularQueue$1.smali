.class Lcom/bea/xml/stream/util/CircularQueue$1;
.super Ljava/lang/Object;
.source "CircularQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final ci:I

.field private i:I

.field private final pi:I

.field private s:I

.field private final this$0:Lcom/bea/xml/stream/util/CircularQueue;


# direct methods
.method constructor <init>(Lcom/bea/xml/stream/util/CircularQueue;)V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->this$0:Lcom/bea/xml/stream/util/CircularQueue;

    .line 180
    iget-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->this$0:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-static {v0}, Lcom/bea/xml/stream/util/CircularQueue;->access$000(Lcom/bea/xml/stream/util/CircularQueue;)I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->ci:I

    .line 181
    iget-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->this$0:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-static {v0}, Lcom/bea/xml/stream/util/CircularQueue;->access$100(Lcom/bea/xml/stream/util/CircularQueue;)I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->pi:I

    .line 182
    iget-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->this$0:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-static {v0}, Lcom/bea/xml/stream/util/CircularQueue;->access$200(Lcom/bea/xml/stream/util/CircularQueue;)I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->s:I

    .line 183
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->ci:I

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->i:I

    return-void
.end method

.method private checkForModification()V
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->ci:I

    iget-object v1, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->this$0:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-static {v1}, Lcom/bea/xml/stream/util/CircularQueue;->access$000(Lcom/bea/xml/stream/util/CircularQueue;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 207
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->pi:I

    iget-object v1, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->this$0:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-static {v1}, Lcom/bea/xml/stream/util/CircularQueue;->access$100(Lcom/bea/xml/stream/util/CircularQueue;)I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 208
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/bea/xml/stream/util/CircularQueue$1;->checkForModification()V

    .line 187
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->s:I

    if-lez v0, :cond_0

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
    .line 191
    invoke-direct {p0}, Lcom/bea/xml/stream/util/CircularQueue$1;->checkForModification()V

    .line 192
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->s:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 194
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->s:I

    .line 195
    iget-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->this$0:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-static {v0}, Lcom/bea/xml/stream/util/CircularQueue;->access$300(Lcom/bea/xml/stream/util/CircularQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->i:I

    aget-object v0, v0, v1

    .line 196
    iget v1, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->i:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->this$0:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-static {v2}, Lcom/bea/xml/stream/util/CircularQueue;->access$400(Lcom/bea/xml/stream/util/CircularQueue;)I

    move-result v2

    and-int/2addr v1, v2

    iput v1, p0, Lcom/bea/xml/stream/util/CircularQueue$1;->i:I

    .line 198
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
