.class public Lcom/bea/xml/stream/XMLEventAllocatorBase;
.super Ljava/lang/Object;
.source "XMLEventAllocatorBase.java"

# interfaces
.implements Ljavax/xml/stream/util/XMLEventAllocator;


# instance fields
.field factory:Ljavax/xml/stream/XMLEventFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    .line 48
    return-void
.end method

.method public static getAttributes(Ljavax/xml/stream/XMLStreamReader;)Ljava/util/Iterator;
    .locals 9

    .prologue
    .line 55
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    .line 65
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v7

    .line 57
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_1

    .line 59
    new-instance v0, Lcom/bea/xml/stream/AttributeBase;

    invoke-interface {p0, v6}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v6}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v6}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v6}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v6}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNamespaces(Ljavax/xml/stream/XMLStreamReader;)Ljava/util/Iterator;
    .locals 5

    .prologue
    .line 69
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    .line 81
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 72
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    :cond_1
    new-instance v2, Lcom/bea/xml/stream/NamespaceBase;

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_2
    new-instance v3, Lcom/bea/xml/stream/NamespaceBase;

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    :pswitch_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unable to allocate event["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v2

    invoke-static {v2}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateStartElement(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 228
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateEndElement(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/EndElement;

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateCharacters(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateCharacters(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    goto :goto_0

    .line 231
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateCData(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateEntityReference(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/EntityReference;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocatePI(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object v0

    goto :goto_0

    .line 234
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateComment(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/Comment;

    move-result-object v0

    goto :goto_0

    .line 236
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateStartDocument(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateEndDocument(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/EndDocument;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateDTD(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/DTD;

    move-result-object v0

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method public allocate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 252
    return-void
.end method

.method public allocateCData(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/Characters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    return-object v0
.end method

.method public allocateCharacters(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/Characters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v0

    .line 116
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v1

    .line 117
    new-instance v2, Ljava/lang/String;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 120
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v0, v2}, Ljavax/xml/stream/XMLEventFactory;->createSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v0, v2}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    goto :goto_0
.end method

.method public allocateComment(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/Comment;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;

    move-result-object v0

    return-object v0
.end method

.method public allocateDTD(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/DTD;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 186
    instance-of v0, p1, Lcom/bea/xml/stream/MXParser;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 187
    check-cast v0, Lcom/bea/xml/stream/MXParser;

    .line 188
    new-instance v2, Lcom/bea/xml/stream/events/DTDEvent;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/bea/xml/stream/events/DTDEvent;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v1, "javax.xml.stream.notations"

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/MXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/bea/xml/stream/events/DTDEvent;->setNotations(Ljava/util/List;)V

    .line 190
    const-string v1, "javax.xml.stream.entities"

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/MXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/bea/xml/stream/events/DTDEvent;->setEntities(Ljava/util/List;)V

    move-object v0, v2

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createDTD(Ljava/lang/String;)Ljavax/xml/stream/events/DTD;

    move-result-object v0

    goto :goto_0
.end method

.method public allocateEndDocument(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/EndDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v0}, Ljavax/xml/stream/XMLEventFactory;->createEndDocument()Ljavax/xml/stream/events/EndDocument;

    move-result-object v0

    return-object v0
.end method

.method public allocateEndElement(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/EndElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 103
    if-nez v1, :cond_0

    const-string v1, ""

    .line 104
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->getNamespaces(Ljavax/xml/stream/XMLStreamReader;)Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {v2, v1, v0, v3, v4}, Ljavax/xml/stream/XMLEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object v0

    return-object v0
.end method

.method public allocateEntityReference(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/EntityReference;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 144
    instance-of v1, p1, Lcom/bea/xml/stream/MXParser;

    if-eqz v1, :cond_0

    .line 150
    :cond_0
    new-instance v1, Lcom/bea/xml/stream/events/EntityDeclarationEvent;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bea/xml/stream/events/EntityDeclarationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v2, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;

    move-result-object v0

    return-object v0
.end method

.method public allocatePI(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/ProcessingInstruction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public allocateSpace(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/Characters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    return-object v0
.end method

.method public allocateStartDocument(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/StartDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->allocateXMLDeclaration(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    return-object v0
.end method

.method public allocateStartElement(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/StartElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 89
    if-nez v1, :cond_0

    const-string v1, ""

    .line 90
    :cond_0
    if-nez v2, :cond_1

    const-string v2, ""

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->getAttributes(Ljavax/xml/stream/XMLStreamReader;)Ljava/util/Iterator;

    move-result-object v4

    invoke-static {p1}, Lcom/bea/xml/stream/XMLEventAllocatorBase;->getNamespaces(Ljavax/xml/stream/XMLStreamReader;)Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    return-object v0
.end method

.method public allocateXMLDeclaration(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/StartDocument;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v2

    .line 204
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 207
    iget-object v3, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v3, v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 211
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 213
    iget-object v2, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v2, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_1
    if-eqz v0, :cond_2

    .line 217
    iget-object v1, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventAllocatorBase;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v0}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument()Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    goto :goto_0
.end method

.method public newInstance()Ljavax/xml/stream/util/XMLEventAllocator;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/bea/xml/stream/XMLEventAllocatorBase;

    invoke-direct {v0}, Lcom/bea/xml/stream/XMLEventAllocatorBase;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, "NonStaticAllocator"

    return-object v0
.end method
