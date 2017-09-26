.class public Lcom/bea/xml/stream/XMLStreamRecorder;
.super Lcom/bea/xml/stream/XMLWriterBase;
.source "XMLStreamRecorder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bea/xml/stream/XMLWriterBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;-><init>(Ljava/io/Writer;)V

    .line 35
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
    .line 222
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 223
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    .line 224
    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/bea/xml/stream/XMLStreamRecorder;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "out.stream"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lcom/bea/xml/stream/XMLStreamRecorder;-><init>(Ljava/io/Writer;)V

    .line 228
    :goto_0
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 230
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 233
    invoke-virtual {v1}, Lcom/bea/xml/stream/XMLStreamRecorder;->flush()V

    .line 234
    return-void
.end method


# virtual methods
.method protected closeEndTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 78
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(C)V

    .line 79
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
    .line 66
    const-string v0, "];\n"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected openEndTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 72
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(C)V

    .line 73
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
    .line 62
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(C)V

    .line 63
    return-void
.end method

.method public write(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->writeType(I)V

    .line 217
    invoke-super {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 218
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamRecorder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";\n"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 219
    :cond_0
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
    .line 86
    const-string v0, "[[ATTRIBUTE]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 87
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/bea/xml/stream/XMLStreamRecorder;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    const-string v0, "="

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/bea/xml/stream/XMLStreamRecorder;->writeCharactersInternal([CIIZ)V

    .line 90
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 91
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
    .line 161
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 164
    :cond_0
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected writeCharactersInternal([CIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 205
    if-nez p3, :cond_0

    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/bea/xml/stream/XMLStreamRecorder;->write([CII)V

    .line 209
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamRecorder;->closeStartElement()V

    .line 130
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 133
    :cond_0
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->write(Ljava/lang/String;)V

    .line 155
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 156
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
    .line 115
    const-string v0, "[[DEFAULT]["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamRecorder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "A start element must be written before the default namespace"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    const-string v0, "xmlns]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 119
    const-string v0, "=["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 121
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 122
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/bea/xml/stream/XMLStreamRecorder;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(C)V

    .line 124
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
    .line 170
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 171
    invoke-super {p0, p1}, Lcom/bea/xml/stream/XMLWriterBase;->writeEntityRef(Ljava/lang/String;)V

    .line 172
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method protected writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 44
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/bea/xml/stream/XMLWriterBase;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(C)V

    .line 46
    return-object v0

    .line 43
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamRecorder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "A start element must be written before a namespace"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLStreamRecorder;->writeDefaultNamespace(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_2
    const-string v0, "[[NAMESPACE]["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 103
    const-string v0, "xmlns:"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 105
    const-string v0, "]=["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 107
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/bea/xml/stream/XMLStreamRecorder;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(C)V

    goto :goto_0
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamRecorder;->closeStartElement()V

    .line 141
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 144
    :cond_0
    if-eqz p2, :cond_1

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ",["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 147
    :cond_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 148
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
    .line 178
    const-string v0, "[[1.0],[utf-8]]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 179
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
    .line 184
    const-string v0, "[["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 186
    const-string v0, "],[utf-8]]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 187
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
    .line 193
    const-string v0, "[["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 195
    const-string v0, "],["

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 197
    const-string v0, "]]"

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method protected writeType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamRecorder;->closeStartElement()V

    .line 53
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(C)V

    .line 54
    invoke-static {p1}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljava/lang/String;)V

    .line 55
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(C)V

    .line 57
    return-void
.end method
