.class public Lcom/bea/xml/stream/MXParserFactory;
.super Ljavax/xml/stream/XMLInputFactory;
.source "MXParserFactory.java"


# instance fields
.field config:Lcom/bea/xml/stream/ConfigurationContextBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljavax/xml/stream/XMLInputFactory;-><init>()V

    .line 37
    new-instance v0, Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-direct {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    return-void
.end method

.method public static newInstance()Ljavax/xml/stream/XMLInputFactory;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createFilteredReader(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/bea/xml/stream/EventReaderFilter;

    invoke-direct {v0, p1, p2}, Lcom/bea/xml/stream/EventReaderFilter;-><init>(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)V

    return-object v0
.end method

.method public createFilteredReader(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/bea/xml/stream/StreamReaderFilter;

    invoke-direct {v0, p1, p2}, Lcom/bea/xml/stream/StreamReaderFilter;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParserFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParserFactory;->createXMLEventReader(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/bea/xml/stream/MXParserFactory;->createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParserFactory;->createXMLEventReader(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParserFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParserFactory;->createXMLEventReader(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/MXParserFactory;->createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/MXParserFactory;->createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLEventReader(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/XMLEventReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getEventAllocator()Ljavax/xml/stream/util/XMLEventAllocator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/bea/xml/stream/XMLEventReaderBase;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/XMLEventReaderBase;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    .line 135
    :goto_0
    return-object v0

    .line 132
    :cond_0
    new-instance v0, Lcom/bea/xml/stream/XMLEventReaderBase;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getEventAllocator()Ljavax/xml/stream/util/XMLEventAllocator;

    move-result-object v1

    invoke-interface {v1}, Ljavax/xml/stream/util/XMLEventAllocator;->newInstance()Ljavax/xml/stream/util/XMLEventAllocator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/bea/xml/stream/XMLEventReaderBase;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventAllocator;)V

    goto :goto_0
.end method

.method public createXMLEventReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParserFactory;->createXMLStreamReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParserFactory;->createXMLEventReader(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/bea/xml/stream/MXParser;

    invoke-direct {v0}, Lcom/bea/xml/stream/MXParser;-><init>()V

    .line 79
    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/InputStream;)V

    .line 80
    iget-object v1, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/MXParser;->setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V

    .line 81
    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/bea/xml/stream/MXParser;

    invoke-direct {v0}, Lcom/bea/xml/stream/MXParser;-><init>()V

    .line 91
    invoke-virtual {v0, p1, p2}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/MXParser;->setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V

    .line 93
    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/bea/xml/stream/MXParser;

    invoke-direct {v0}, Lcom/bea/xml/stream/MXParser;-><init>()V

    .line 261
    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    .line 262
    iget-object v1, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/MXParser;->setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V

    .line 263
    return-object v0
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/MXParserFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/MXParserFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 49
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_2

    .line 50
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    .line 51
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0, v1, v2}, Lcom/bea/xml/stream/MXParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0, v1, v0}, Lcom/bea/xml/stream/MXParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Can only create STaX reader for a SAXSource if Reader or InputStream exposed via getSource(); can not use -- not implemented."

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_3

    .line 70
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "XMLInputFactory.createXMLStreamReader("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEventAllocator()Ljavax/xml/stream/util/XMLEventAllocator;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getEventAllocator()Ljavax/xml/stream/util/XMLEventAllocator;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXMLReporter()Ljavax/xml/stream/XMLReporter;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getXMLReporter()Ljavax/xml/stream/XMLReporter;

    move-result-object v0

    return-object v0
.end method

.method public getXMLResolver()Ljavax/xml/stream/XMLResolver;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->getXMLResolver()Ljavax/xml/stream/XMLResolver;

    move-result-object v0

    return-object v0
.end method

.method public isCoalescing()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->isCoalescing()Z

    move-result v0

    return v0
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->isPropertySupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCoalescing(Z)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setCoalescing(Z)V

    .line 239
    return-void
.end method

.method public setEventAllocator(Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setEventAllocator(Ljavax/xml/stream/util/XMLEventAllocator;)V

    .line 225
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1, p2}, Lcom/bea/xml/stream/ConfigurationContextBase;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public setXMLReporter(Ljavax/xml/stream/XMLReporter;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setXMLReporter(Ljavax/xml/stream/XMLReporter;)V

    .line 216
    return-void
.end method

.method public setXMLResolver(Ljavax/xml/stream/XMLResolver;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bea/xml/stream/MXParserFactory;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setXMLResolver(Ljavax/xml/stream/XMLResolver;)V

    .line 177
    return-void
.end method
