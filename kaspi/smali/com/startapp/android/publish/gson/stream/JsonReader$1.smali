.class final Lcom/startapp/android/publish/gson/stream/JsonReader$1;
.super Lcom/startapp/android/publish/gson/internal/JsonReaderInternalAccess;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1533
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/startapp/android/publish/gson/stream/JsonReader;)V
    .locals 3

    .prologue
    .line 1535
    instance-of v0, p1, Lcom/startapp/android/publish/gson/internal/bind/JsonTreeReader;

    if-eqz v0, :cond_0

    .line 1536
    check-cast p1, Lcom/startapp/android/publish/gson/internal/bind/JsonTreeReader;

    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1553
    :goto_0
    return-void

    .line 1539
    :cond_0
    # getter for: Lcom/startapp/android/publish/gson/stream/JsonReader;->peeked:I
    invoke-static {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->access$000(Lcom/startapp/android/publish/gson/stream/JsonReader;)I

    move-result v0

    .line 1540
    if-nez v0, :cond_1

    .line 1541
    # invokes: Lcom/startapp/android/publish/gson/stream/JsonReader;->doPeek()I
    invoke-static {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->access$100(Lcom/startapp/android/publish/gson/stream/JsonReader;)I

    move-result v0

    .line 1543
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1544
    const/16 v0, 0x9

    # setter for: Lcom/startapp/android/publish/gson/stream/JsonReader;->peeked:I
    invoke-static {p1, v0}, Lcom/startapp/android/publish/gson/stream/JsonReader;->access$002(Lcom/startapp/android/publish/gson/stream/JsonReader;I)I

    goto :goto_0

    .line 1545
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1546
    const/16 v0, 0x8

    # setter for: Lcom/startapp/android/publish/gson/stream/JsonReader;->peeked:I
    invoke-static {p1, v0}, Lcom/startapp/android/publish/gson/stream/JsonReader;->access$002(Lcom/startapp/android/publish/gson/stream/JsonReader;I)I

    goto :goto_0

    .line 1547
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1548
    const/16 v0, 0xa

    # setter for: Lcom/startapp/android/publish/gson/stream/JsonReader;->peeked:I
    invoke-static {p1, v0}, Lcom/startapp/android/publish/gson/stream/JsonReader;->access$002(Lcom/startapp/android/publish/gson/stream/JsonReader;I)I

    goto :goto_0

    .line 1550
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/startapp/android/publish/gson/stream/JsonReader;->getLineNumber()I
    invoke-static {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->access$200(Lcom/startapp/android/publish/gson/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/startapp/android/publish/gson/stream/JsonReader;->getColumnNumber()I
    invoke-static {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->access$300(Lcom/startapp/android/publish/gson/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
