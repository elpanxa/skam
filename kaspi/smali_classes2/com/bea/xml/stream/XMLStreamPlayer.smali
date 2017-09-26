.class public Lcom/bea/xml/stream/XMLStreamPlayer;
.super Ljava/lang/Object;
.source "XMLStreamPlayer.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;


# instance fields
.field context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

.field scanner:Lcom/bea/xml/stream/EventScanner;

.field state:Lcom/bea/xml/stream/EventState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 47
    :try_start_0
    new-instance v0, Lcom/bea/xml/stream/EventScanner;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventScanner;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    .line 48
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->next()I

    .line 49
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/bea/xml/stream/EventScanner;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/bea/xml/stream/EventScanner;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to instantiate the XMLStreamPlayer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 60
    :try_start_0
    new-instance v0, Lcom/bea/xml/stream/EventScanner;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/EventScanner;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    .line 61
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    return-object v0
.end method

.method private getNamespaceInternal(I)Ljavax/xml/stream/events/Attribute;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lcom/bea/xml/stream/XMLStreamPlayer;

    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/XMLStreamPlayer;-><init>(Ljava/io/Reader;)V

    .line 352
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v1

    .line 353
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    .line 354
    new-instance v2, Lcom/bea/xml/stream/ReaderToWriter;

    invoke-direct {v2, v1}, Lcom/bea/xml/stream/ReaderToWriter;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    .line 355
    :goto_0
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    invoke-virtual {v2, v0}, Lcom/bea/xml/stream/ReaderToWriter;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 357
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    goto :goto_0

    .line 359
    :cond_0
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 360
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method public endDocumentIsPresent()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->endDocumentIsPresent()Z

    move-result v0

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 225
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 176
    invoke-direct {p0, v0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v1

    .line 177
    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    if-nez p1, :cond_0

    .line 179
    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_1
    return-object v0

    .line 181
    :cond_0
    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 109
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Precondition for readText is getEventType() == START_ELEMENT"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->next()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 113
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected Element start"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 266
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 244
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 250
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getExtraData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getPrefix()Ljava/lang/String;

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
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

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
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTextCharacters()[C
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public getTextStream()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    const-string v0, "1.0"

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    and-int/lit8 v0, v0, 0xb

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttributeSpecified(I)Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public isCharacters()Z
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndElement()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public isStartElement()Z
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    .line 78
    const/4 v0, -0x1

    .line 91
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->readElement()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    .line 81
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->openScope()V

    .line 83
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getDepth()I

    move-result v0

    if-lez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->closeScope()V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->next()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 125
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isCharacters()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected text"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public subReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method
