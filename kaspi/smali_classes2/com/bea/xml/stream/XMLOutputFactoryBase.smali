.class public Lcom/bea/xml/stream/XMLOutputFactoryBase;
.super Ljavax/xml/stream/XMLOutputFactory;
.source "XMLOutputFactoryBase.java"


# instance fields
.field config:Lcom/bea/xml/stream/ConfigurationContextBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljavax/xml/stream/XMLOutputFactory;-><init>()V

    .line 33
    new-instance v0, Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-direct {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLOutputFactoryBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    return-void
.end method


# virtual methods
.method public createXMLEventWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLEventWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/bea/xml/stream/XMLEventWriterBase;

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLOutputFactoryBase;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/XMLEventWriterBase;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    return-object v0
.end method

.method public createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/bea/xml/stream/XMLEventWriterBase;

    invoke-virtual {p0, p1, p2}, Lcom/bea/xml/stream/XMLOutputFactoryBase;->createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/XMLEventWriterBase;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    return-object v0
.end method

.method public createXMLEventWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLEventWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/bea/xml/stream/XMLEventWriterBase;

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLOutputFactoryBase;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/XMLEventWriterBase;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    return-object v0
.end method

.method public createXMLEventWriter(Ljavax/xml/transform/Result;)Ljavax/xml/stream/XMLEventWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLOutputFactoryBase;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLOutputFactoryBase;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/bea/xml/stream/XMLWriterBase;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/XMLWriterBase;-><init>(Ljava/io/Writer;)V

    .line 39
    iget-object v1, p0, Lcom/bea/xml/stream/XMLOutputFactoryBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V

    .line 40
    return-object v0
.end method

.method public createXMLStreamWriter(Ljavax/xml/transform/Result;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bea/xml/stream/XMLOutputFactoryBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isPrefixDefaulting()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bea/xml/stream/XMLOutputFactoryBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->isPrefixDefaulting()Z

    move-result v0

    return v0
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bea/xml/stream/XMLOutputFactoryBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->isPropertySupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPrefixDefaulting(Z)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bea/xml/stream/XMLOutputFactoryBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->setPrefixDefaulting(Z)V

    .line 89
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bea/xml/stream/XMLOutputFactoryBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1, p2}, Lcom/bea/xml/stream/ConfigurationContextBase;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method
