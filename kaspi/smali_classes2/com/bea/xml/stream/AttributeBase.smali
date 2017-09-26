.class public Lcom/bea/xml/stream/AttributeBase;
.super Ljava/lang/Object;
.source "AttributeBase.java"

# interfaces
.implements Ljavax/xml/stream/Location;
.implements Ljavax/xml/stream/events/Attribute;


# instance fields
.field private attributeType:Ljavax/xml/namespace/QName;

.field private characterOffset:I

.field private column:I

.field private eventType:I

.field private line:I

.field private locationURI:Ljava/lang/String;

.field private name:Ljavax/xml/namespace/QName;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->eventType:I

    .line 38
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    .line 39
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    .line 58
    if-nez p1, :cond_0

    const-string p1, ""

    .line 59
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, ""

    invoke-direct {v0, v1, p2, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    .line 60
    iput-object p3, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->eventType:I

    .line 38
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    .line 39
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    .line 47
    if-nez p1, :cond_0

    const-string p1, ""

    .line 49
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    .line 50
    iput-object p4, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    .line 51
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->attributeType:Ljavax/xml/namespace/QName;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->eventType:I

    .line 38
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    .line 39
    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    .line 65
    iput-object p1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    .line 66
    iput-object p2, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static writeEncodedChar(Ljava/io/Writer;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v0, "&#"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 198
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 199
    return-void
.end method


# virtual methods
.method public asCharacters()Ljavax/xml/stream/events/Characters;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "cannnot cast AttributeBase to Characters"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asEndElement()Ljavax/xml/stream/events/EndElement;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "cannnot cast AttributeBase to EndElement"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asStartElement()Ljavax/xml/stream/events/StartElement;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "cannnot cast AttributeBase to StartElement"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    return v0
.end method

.method public getDTDType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0xa

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 0

    .prologue
    .line 113
    return-object p0
.end method

.method public getLocationURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->locationURI:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaType()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttribute()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public isCharacters()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public isEndDocument()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isEndElement()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public isEndEntity()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public isEntityReference()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isNamespace()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isNamespaceDeclaration()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessingInstruction()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecified()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public isStartDocument()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isStartElement()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isStartEntity()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public setCharacterOffset(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/bea/xml/stream/AttributeBase;->characterOffset:I

    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/bea/xml/stream/AttributeBase;->column:I

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/bea/xml/stream/AttributeBase;->line:I

    return-void
.end method

.method public setLocationURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bea/xml/stream/AttributeBase;->locationURI:Ljava/lang/String;

    return-void
.end method

.method public setNamespaceURI(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\']:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v0, 0x0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 128
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 133
    const-string v1, "=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/bea/xml/stream/AttributeBase;->value:Ljava/lang/String;

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 137
    if-lez v2, :cond_2

    .line 142
    :goto_0
    if-ge v0, v2, :cond_1

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 144
    sparse-switch v3, :sswitch_data_0

    .line 150
    if-ge v3, v4, :cond_3

    .line 157
    :cond_1
    :sswitch_0
    if-ne v0, v2, :cond_4

    .line 158
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 186
    :cond_2
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 190
    return-void

    .line 142
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_4
    if-lez v0, :cond_5

    .line 161
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 163
    :cond_5
    :goto_1
    if-ge v0, v2, :cond_2

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 165
    sparse-switch v3, :sswitch_data_1

    .line 176
    if-ge v3, v4, :cond_6

    .line 177
    invoke-static {p1, v3}, Lcom/bea/xml/stream/AttributeBase;->writeEncodedChar(Ljava/io/Writer;C)V

    .line 163
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :sswitch_1
    const-string v3, "&amp;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 187
    :catch_0
    move-exception v0

    .line 188
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 170
    :sswitch_2
    :try_start_1
    const-string v3, "&lt;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 173
    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 179
    :cond_6
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_0
        0x3c -> :sswitch_0
    .end sparse-switch

    .line 165
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch
.end method
