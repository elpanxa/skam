.class public Lcom/bea/xml/stream/ReaderToWriter;
.super Ljava/lang/Object;
.source "ReaderToWriter.java"


# instance fields
.field private writer:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    .line 36
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
    .line 121
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 122
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/io/FileReader;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    .line 124
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    .line 126
    new-instance v2, Lcom/bea/xml/stream/ReaderToWriter;

    invoke-direct {v2, v1}, Lcom/bea/xml/stream/ReaderToWriter;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    .line 127
    :goto_0
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v2, v0}, Lcom/bea/xml/stream/ReaderToWriter;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 129
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 132
    return-void
.end method


# virtual methods
.method public setStreamWriter(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    .line 40
    return-void
.end method

.method public write(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "wrote event"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 47
    :pswitch_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    goto :goto_0

    .line 76
    :pswitch_4
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_5
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_6
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :pswitch_7
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :pswitch_8
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 93
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 94
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v2, v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_3
    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :pswitch_9
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    goto/16 :goto_0

    .line 103
    :pswitch_a
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public writeAll(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 112
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/ReaderToWriter;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 114
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 117
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    return-object v0
.end method
