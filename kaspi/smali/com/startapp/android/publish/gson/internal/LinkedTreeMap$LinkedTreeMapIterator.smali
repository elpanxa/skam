.class abstract Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;


# direct methods
.method private constructor <init>(Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;)V
    .locals 1

    .prologue
    .line 526
    iput-object p1, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    iget-object v0, v0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->header:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    iget-object v0, v0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;->next:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    .line 529
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$1;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->header:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextNode()Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    .line 537
    iget-object v1, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->header:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    iget v1, v1, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-eq v1, v2, :cond_1

    .line 541
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 543
    :cond_1
    iget-object v1, v0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;->next:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    .line 544
    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->removeInternal(Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;Z)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    .line 553
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    .line 554
    return-void
.end method
