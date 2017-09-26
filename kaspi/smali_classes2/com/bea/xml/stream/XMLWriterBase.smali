.class public Lcom/bea/xml/stream/XMLWriterBase;
.super Lcom/bea/xml/stream/ReaderToWriter;
.source "XMLWriterBase.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# static fields
.field protected static final DEFAULTNS:Ljava/lang/String; = ""


# instance fields
.field private config:Lcom/bea/xml/stream/ConfigurationContextBase;

.field protected context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

.field private defaultPrefixCount:I

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private isEmpty:Z

.field private isPrefixDefaulting:Z

.field private localNameStack:Lcom/bea/xml/stream/util/Stack;

.field private needToWrite:Ljava/util/HashSet;

.field private prefixStack:Lcom/bea/xml/stream/util/Stack;

.field private setNeedsWritingNs:Ljava/util/HashSet;

.field private startElementOpened:Z

.field private uriStack:Lcom/bea/xml/stream/util/Stack;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/bea/xml/stream/ReaderToWriter;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    .line 42
    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    .line 48
    new-instance v0, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    .line 49
    new-instance v0, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->prefixStack:Lcom/bea/xml/stream/util/Stack;

    .line 50
    new-instance v0, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->uriStack:Lcom/bea/xml/stream/util/Stack;

    .line 51
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 55
    iput v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    .line 526
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/bea/xml/stream/ReaderToWriter;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    .line 42
    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    .line 48
    new-instance v0, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    .line 49
    new-instance v0, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->prefixStack:Lcom/bea/xml/stream/util/Stack;

    .line 50
    new-instance v0, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->uriStack:Lcom/bea/xml/stream/util/Stack;

    .line 51
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 55
    iput v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    .line 526
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    .line 58
    iput-object p1, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    .line 59
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->setWriter(Ljava/io/Writer;)V

    .line 60
    return-void
.end method

.method private clearNeedsWritingNs()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 529
    return-void
.end method

.method private flushNamespace()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isPrefixDefaulting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 319
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v2, v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    if-nez v2, :cond_2

    .line 323
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to default prefix with uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/bea/xml/stream/XMLWriterBase;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method

.method private getPrefixInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    if-nez v0, :cond_0

    .line 267
    const-string v0, ""

    .line 269
    :cond_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 711
    invoke-static {}, Lcom/bea/xml/stream/XMLOutputFactoryBase;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    .line 712
    const-string v1, "javax.xml.stream.isRepairingNamespaces"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLOutputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "tmp"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "us-ascii"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    .line 716
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    .line 717
    const-string v1, "c"

    const-string v2, "http://c"

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v1, "http://d"

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    .line 719
    const-string v1, "http://c"

    const-string v2, "a"

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v1, "b"

    const-string v2, "blah"

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v1, "http://c"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v1, "http://d"

    const-string v2, "e"

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v1, "http://e"

    const-string v2, "f"

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v1, "http://f"

    const-string v2, "g"

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v1, "http://c"

    const-string v2, "chris"

    const-string v3, "fry"

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v1, "foo bar foo"

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 727
    const-string v1, "bad char coming["

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 728
    const/16 v1, 0x1024

    .line 729
    new-array v2, v4, [C

    .line 730
    const/4 v3, 0x0

    aput-char v1, v2, v3

    .line 731
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 732
    const-string v1, "]"

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 733
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 734
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 737
    return-void
.end method

.method private needToWrite(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 292
    return v0
.end method

.method private needsWritingNs(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 532
    :goto_0
    if-eqz v0, :cond_0

    .line 533
    iget-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->setNeedsWritingNs:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_0
    return v0

    .line 531
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openStartElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartTag()V

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    goto :goto_0
.end method

.method private prepareNamespace(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isPrefixDefaulting:Z

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    if-nez v0, :cond_0

    .line 304
    iget v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    .line 305
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->defaultPrefixCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeNamespace(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isPrefixDefaulting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private slowWriteCharacters([CIIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3b

    .line 176
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 177
    add-int v1, v0, p2

    aget-char v1, p1, v1

    .line 178
    sparse-switch v1, :sswitch_data_0

    .line 195
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 196
    if-nez p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 197
    :cond_0
    const-string v2, "&#"

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/XMLWriterBase;->write(C)V

    .line 176
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :sswitch_0
    const-string v1, "&amp;"

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :sswitch_1
    const-string v1, "&lt;"

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :sswitch_2
    const-string v1, "&gt;"

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :sswitch_3
    if-eqz p4, :cond_2

    .line 190
    const-string v1, "&quot;"

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_1
    const/16 v2, 0x7f

    if-le v1, v2, :cond_2

    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    const-string v2, "&#"

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/XMLWriterBase;->write(C)V

    goto :goto_1

    .line 210
    :cond_2
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLWriterBase;->write(C)V

    goto :goto_1

    .line 212
    :cond_3
    return-void

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
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
    .line 453
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->flush()V

    .line 454
    return-void
.end method

.method protected closeEndTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 419
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method protected closeStartElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartTag()V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    .line 221
    :cond_0
    return-void
.end method

.method protected closeStartTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->flushNamespace()V

    .line 231
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->clearNeedsWritingNs()V

    .line 232
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "/>"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

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
    .line 687
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getURIInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    if-nez v0, :cond_0

    .line 274
    const-string v0, ""

    .line 276
    :cond_0
    return-object v0
.end method

.method protected isOpen()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->startElementOpened:Z

    return v0
.end method

.method protected openEndTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 414
    const-string v0, "</"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method protected openStartTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 283
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/bea/xml/stream/XMLWriterBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    .line 75
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->config:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->isPrefixDefaulting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isPrefixDefaulting:Z

    .line 76
    return-void
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite(Ljava/lang/String;)Z

    .line 668
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindDefaultNameSpace(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 674
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The namespace  context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_0
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>(Ljavax/xml/namespace/NamespaceContext;)V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 678
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-direct {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->needToWrite(Ljava/lang/String;)Z

    .line 660
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1, p2}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    .line 64
    invoke-virtual {p0, p0}, Lcom/bea/xml/stream/XMLWriterBase;->setStreamWriter(Ljavax/xml/stream/XMLStreamWriter;)V

    .line 65
    instance-of v0, p1, Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    goto :goto_0
.end method

.method protected write(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected write([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 473
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "A start element must be written before an attribute"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 483
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 484
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 485
    const-string v0, "=\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/bea/xml/stream/XMLWriterBase;->writeCharactersInternal([CIIZ)V

    .line 487
    const-string v0, "\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "A start element must be written before an attribute"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    invoke-direct {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1, p2}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0, p1, p2, p3}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 502
    const-string v0, "=\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/bea/xml/stream/XMLWriterBase;->writeCharactersInternal([CIIZ)V

    .line 504
    const-string v0, "\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 595
    const-string v0, "<![CDATA["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 596
    if-eqz p1, :cond_0

    .line 597
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 598
    :cond_0
    const-string v0, "]]>"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 639
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/bea/xml/stream/XMLWriterBase;->writeCharactersInternal([CIIZ)V

    .line 640
    return-void
.end method

.method public writeCharacters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bea/xml/stream/XMLWriterBase;->writeCharactersInternal([CIIZ)V

    .line 647
    return-void
.end method

.method protected writeCharactersInternal([CIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p3, :cond_0

    .line 167
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_1
    if-ge v0, p3, :cond_1

    .line 136
    add-int v1, v0, p2

    aget-char v1, p1, v1

    .line 137
    sparse-switch v1, :sswitch_data_0

    .line 147
    const/16 v2, 0x20

    if-ge v1, v2, :cond_3

    .line 152
    if-nez p4, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 162
    :cond_1
    :goto_2
    :sswitch_0
    if-ge v0, p3, :cond_4

    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bea/xml/stream/XMLWriterBase;->slowWriteCharacters([CIIZ)V

    goto :goto_0

    .line 139
    :sswitch_1
    if-nez p4, :cond_1

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_3
    const/16 v2, 0x7f

    if-le v1, v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 165
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/bea/xml/stream/XMLWriterBase;->write([CII)V

    goto :goto_0

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x26 -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 556
    const-string v0, "<!--"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 557
    if-eqz p1, :cond_0

    .line 558
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 559
    :cond_0
    const-string v0, "-->"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "A start element must be written before the default namespace"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->needsWritingNs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    const-string v0, " xmlns"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 545
    const-string v0, "=\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 547
    const-string v0, "\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 548
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_1
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 408
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openStartElement()V

    .line 385
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    .line 387
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 388
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openStartElement()V

    .line 397
    invoke-direct {p0, p3}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->isEmpty:Z

    .line 399
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 401
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public writeEndDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 466
    :goto_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->writeEndElement()V

    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method public writeEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->prefixStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    iget-object v1, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v1}, Lcom/bea/xml/stream/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    iget-object v2, p0, Lcom/bea/xml/stream/XMLWriterBase;->uriStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v2}, Lcom/bea/xml/stream/util/Stack;->pop()Ljava/lang/Object;

    .line 438
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openEndTag()V

    .line 439
    const-string v2, ""

    invoke-virtual {p0, v0, v2, v1}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeEndTag()V

    .line 442
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->closeScope()V

    .line 443
    return-void
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 605
    const-string v0, "&"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 607
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method protected writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->getPrefixInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 257
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 259
    :cond_1
    invoke-virtual {p0, p3}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 260
    return-object p1
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "A start element must be written before a namespace"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeDefaultNamespace(Ljava/lang/String;)V

    .line 524
    :cond_2
    :goto_0
    return-void

    .line 516
    :cond_3
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->needsWritingNs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    const-string v0, " xmlns:"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 519
    const-string v0, "=\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 521
    const-string v0, "\""

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bea/xml/stream/XMLWriterBase;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 574
    const-string v0, "<?"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 575
    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 578
    :cond_0
    if-eqz p2, :cond_1

    .line 580
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(C)V

    .line 581
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 583
    :cond_1
    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->closeStartElement()V

    .line 449
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public writeStartDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 613
    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\'?>"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 619
    const-string v0, "<?xml version=\'"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 621
    const-string v0, "\'?>"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 628
    const-string v0, "<?xml version=\'"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 630
    const-string v0, "\' encoding=\'"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 632
    const-string v0, "\'?>"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->openScope()V

    .line 378
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->openScope()V

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeStartElementInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 362
    if-nez p3, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The namespace URI may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    if-nez p2, :cond_1

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The local name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1
    if-nez p1, :cond_2

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The prefix may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->openScope()V

    .line 369
    invoke-direct {p0, p3}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1, p3}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p3, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeStartElementInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method protected writeStartElementInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The namespace URI may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    if-nez p2, :cond_1

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The local name  may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openStartElement()V

    .line 341
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLWriterBase;->openStartTag()V

    .line 342
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->prepareNamespace(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->prefixStack:Lcom/bea/xml/stream/util/Stack;

    const-string v1, ""

    invoke-virtual {p0, v1, p1, p2}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/util/Stack;->push(Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->localNameStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0, p2}, Lcom/bea/xml/stream/util/Stack;->push(Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/bea/xml/stream/XMLWriterBase;->uriStack:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/Stack;->push(Ljava/lang/Object;)V

    .line 346
    return-void
.end method
