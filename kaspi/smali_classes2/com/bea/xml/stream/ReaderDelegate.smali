.class public Lcom/bea/xml/stream/ReaderDelegate;
.super Ljava/lang/Object;
.source "ReaderDelegate.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;


# instance fields
.field private reader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    .line 39
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
    .line 86
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->close()V

    .line 87
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeName(I)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Ljavax/xml/stream/XMLStreamReader;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result v0

    return v0
.end method

.method public getTextCharacters()[C
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasText()Z

    move-result v0

    return v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v0

    return v0
.end method

.method public isCharacters()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->isCharacters()Z

    move-result v0

    return v0
.end method

.method public isEndElement()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v0

    return v0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v0

    return v0
.end method

.method public isStartElement()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamReader;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setDelegate(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    .line 42
    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v0

    return v0
.end method
