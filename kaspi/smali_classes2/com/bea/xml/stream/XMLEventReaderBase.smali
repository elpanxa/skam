.class public Lcom/bea/xml/stream/XMLEventReaderBase;
.super Ljava/lang/Object;
.source "XMLEventReaderBase.java"

# interfaces
.implements Ljavax/xml/stream/XMLEventReader;
.implements Ljavax/xml/stream/util/XMLEventConsumer;


# instance fields
.field protected allocator:Ljavax/xml/stream/util/XMLEventAllocator;

.field private configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

.field private elementQ:Lcom/bea/xml/stream/util/CircularQueue;

.field private open:Z

.field private reachedEOF:Z

.field protected reader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/bea/xml/stream/XMLEventAllocatorBase;

    invoke-direct {v0}, Lcom/bea/xml/stream/XMLEventAllocatorBase;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bea/xml/stream/XMLEventReaderBase;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventAllocator;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/bea/xml/stream/util/CircularQueue;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/CircularQueue;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    .line 38
    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XMLStreamReader may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XMLEventAllocator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    .line 61
    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    .line 63
    iput-object p2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    .line 68
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    invoke-interface {v0, p1}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 70
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 71
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLEventReaderBase;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 73
    :cond_2
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, "javax.xml.stream.XMLInputFactory"

    const-string v1, "com.bea.xml.stream.MXParserFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    const-string v0, "javax.xml.stream.XMLEventFactory"

    const-string v1, "com.bea.xml.stream.EventFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    .line 228
    :goto_0
    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 230
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v4

    invoke-static {v4}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/CircularQueue;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->internal_close()V

    .line 185
    return-void
.end method

.method protected get()Ljavax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/XMLEvent;

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Precondition for readText is nextEvent().getTypeEventType() == START_ELEMENT (got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected Element start"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 93
    check-cast v0, Ljavax/xml/stream/events/Characters;

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_3
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    iget-boolean v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    if-nez v2, :cond_0

    .line 142
    :goto_0
    return v0

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v2}, Lcom/bea/xml/stream/util/CircularQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 137
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 141
    :cond_2
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected internal_close()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    .line 179
    return-void
.end method

.method protected isOpen()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needsMore()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextEvent()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->needsMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->parseSome()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Attempt to call nextEvent() on a stream with no more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->get()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public nextTag()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljavax/xml/stream/events/Characters;

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected text"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :cond_2
    return-object v1

    .line 110
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseSome()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    iget-boolean v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    if-eqz v2, :cond_0

    .line 205
    :goto_0
    return v1

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    iget-object v3, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v3, p0}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventConsumer;)V

    .line 199
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 202
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    iget-object v3, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v3, p0}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventConsumer;)V

    .line 203
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->needsMore()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public peek()Ljavax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/XMLEvent;

    .line 154
    :goto_0
    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->parseSome()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/XMLEvent;

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllocator(Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 2

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XMLEvent Allocator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    .line 81
    return-void
.end method

.method public setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    .line 210
    return-void
.end method
