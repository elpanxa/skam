.class Lorg/simpleframework/xml/stream/NodeReader;
.super Ljava/lang/Object;
.source "NodeReader.java"


# instance fields
.field private final reader:Lorg/simpleframework/xml/stream/EventReader;

.field private final stack:Lorg/simpleframework/xml/stream/InputStack;

.field private final text:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/EventReader;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    .line 60
    new-instance v0, Lorg/simpleframework/xml/stream/InputStack;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/InputStack;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    .line 61
    iput-object p1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    .line 62
    return-void
.end method

.method private fillText(Lorg/simpleframework/xml/stream/InputNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    return-void
.end method

.method private isName(Lorg/simpleframework/xml/stream/EventNode;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 199
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/EventNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 201
    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private readBuffer(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 276
    if-lez v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readStart(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lorg/simpleframework/xml/stream/InputElement;

    invoke-direct {v0, p1, p0, p2}, Lorg/simpleframework/xml/stream/InputElement;-><init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/NodeReader;Lorg/simpleframework/xml/stream/EventNode;)V

    .line 179
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 182
    :cond_0
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/stream/InputStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/InputNode;

    .line 185
    :cond_1
    return-object v0
.end method

.method private readText(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    .line 251
    :goto_0
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 252
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->fillText(Lorg/simpleframework/xml/stream/InputNode;)V

    .line 257
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    .line 258
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readBuffer(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isEmpty(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 319
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRoot(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/InputStack;->bottom()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/stream/InputStack;->isRelevant(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    .line 113
    :goto_1
    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->pop()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 121
    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    goto :goto_1

    .line 118
    :cond_3
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/stream/NodeReader;->readStart(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    goto :goto_0
.end method

.method public readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/stream/InputStack;->isRelevant(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    .line 144
    :goto_1
    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->fillText(Lorg/simpleframework/xml/stream/InputNode;)V

    .line 159
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    .line 160
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    goto :goto_1

    .line 147
    :cond_3
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 153
    :cond_4
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/stream/NodeReader;->isName(Lorg/simpleframework/xml/stream/EventNode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    goto :goto_0
.end method

.method public readRoot()Lorg/simpleframework/xml/stream/InputNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v1, "Document has no root element"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    return-object v0
.end method

.method public readValue(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/stream/InputStack;->isRelevant(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 221
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 223
    if-gtz v1, :cond_2

    .line 224
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    .line 226
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 230
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/InputStack;->pop()Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    .line 235
    :cond_2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readText(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public skipElement(Lorg/simpleframework/xml/stream/InputNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 337
    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    return-void
.end method
