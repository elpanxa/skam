.class public Lcom/bea/xml/stream/EventReaderFilter;
.super Ljava/lang/Object;
.source "EventReaderFilter.java"

# interfaces
.implements Ljavax/xml/stream/XMLEventReader;


# instance fields
.field private filter:Ljavax/xml/stream/EventFilter;

.field private parent:Ljavax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bea/xml/stream/EventReaderFilter;->parent:Ljavax/xml/stream/XMLEventReader;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/bea/xml/stream/EventReaderFilter;->parent:Ljavax/xml/stream/XMLEventReader;

    .line 44
    iput-object p2, p0, Lcom/bea/xml/stream/EventReaderFilter;->filter:Ljavax/xml/stream/EventFilter;

    .line 45
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "javax.xml.stream.XMLInputFactory"

    const-string v1, "com.bea.xml.stream.MXParserFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    const-string v0, "javax.xml.stream.XMLEventFactory"

    const-string v1, "com.bea.xml.stream.EventFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/bea/xml/stream/filters/TypeFilter;

    invoke-direct {v1}, Lcom/bea/xml/stream/filters/TypeFilter;-><init>()V

    .line 158
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/filters/TypeFilter;->addType(I)V

    .line 159
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/filters/TypeFilter;->addType(I)V

    .line 162
    new-instance v2, Ljava/io/FileReader;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljavax/xml/stream/XMLInputFactory;->createFilteredReader(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    .line 166
    :goto_0
    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bea/xml/stream/EventReaderFilter;->parent:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->close()V

    .line 130
    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventReaderFilter;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Precondition for readText is nextEvent().getTypeEventType() == START_ELEMENT"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventReaderFilter;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventReaderFilter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventReaderFilter;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected Element start"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 81
    check-cast v0, Ljavax/xml/stream/events/Characters;

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_3
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bea/xml/stream/EventReaderFilter;->parent:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLEventReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 104
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/bea/xml/stream/EventReaderFilter;->parent:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/bea/xml/stream/EventReaderFilter;->filter:Ljavax/xml/stream/EventFilter;

    iget-object v2, p0, Lcom/bea/xml/stream/EventReaderFilter;->parent:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/xml/stream/EventFilter;->accept(Ljavax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 110
    :cond_0
    :goto_1
    return v0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/bea/xml/stream/EventReaderFilter;->parent:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventReaderFilter;->nextEvent()Ljavax/xml/stream/events/XMLEvent;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextEvent()Ljavax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventReaderFilter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/bea/xml/stream/EventReaderFilter;->parent:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextTag()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventReaderFilter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventReaderFilter;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljavax/xml/stream/events/Characters;

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected text"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :cond_2
    return-object v1

    .line 97
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Ljavax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventReaderFilter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/bea/xml/stream/EventReaderFilter;->parent:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFilter(Ljavax/xml/stream/EventFilter;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bea/xml/stream/EventReaderFilter;->filter:Ljavax/xml/stream/EventFilter;

    .line 49
    return-void
.end method
