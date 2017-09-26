.class final Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/webm/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$1;,
        Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

.field private final scratch:[B

.field private final varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    .line 41
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    .line 190
    return-void
.end method

.method private readFloat(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)J

    move-result-wide v0

    .line 162
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 163
    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 167
    :goto_0
    return-wide v0

    .line 165
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method private readInteger(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 142
    const-wide/16 v2, 0x0

    .line 143
    :goto_0
    if-ge v0, p2, :cond_0

    .line 144
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-wide v2
.end method

.method private readString(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 181
    new-array v0, p2, [B

    .line 182
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 183
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    .line 51
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 64
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;

    # getter for: Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->elementEndPosition:J
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->access$000(Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    .line 66
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;

    # getter for: Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->elementId:I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->access$100(Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->endMasterElement(I)V

    .line 119
    :goto_2
    return v6

    :cond_0
    move v0, v7

    .line 62
    goto :goto_0

    .line 70
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0, p1, v6, v7}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZ)J

    move-result-wide v0

    .line 72
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    move v6, v7

    .line 73
    goto :goto_2

    .line 76
    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    .line 77
    iput v6, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 80
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    if-ne v0, v6, :cond_4

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0, p1, v7, v6}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->getElementType(I)I

    move-result v0

    .line 86
    packed-switch v0, :pswitch_data_0

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid element type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 89
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v0, v2

    .line 90
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;

    iget v8, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    const/4 v9, 0x0

    invoke-direct {v5, v8, v0, v1, v9}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;-><init>(IJLcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$1;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->startMasterElement(IJJ)V

    .line 92
    iput v7, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    goto :goto_2

    .line 95
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->integerElement(IJ)V

    .line 99
    iput v7, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    goto/16 :goto_2

    .line 102
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid float size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->readFloat(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->floatElement(ID)V

    .line 107
    iput v7, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    goto/16 :goto_2

    .line 110
    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String element size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->readString(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->stringElement(ILjava/lang/String;)V

    .line 114
    iput v7, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    goto/16 :goto_2

    .line 117
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v2, v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 118
    iput v7, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    goto/16 :goto_2

    .line 121
    :pswitch_5
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 122
    iput v7, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    goto/16 :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->reset()V

    .line 58
    return-void
.end method
