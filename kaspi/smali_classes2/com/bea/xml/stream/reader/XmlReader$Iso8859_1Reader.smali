.class final Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;
.super Lcom/bea/xml/stream/reader/XmlReader$BaseReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bea/xml/stream/reader/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Iso8859_1Reader"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public read([CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 848
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->instream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    move p3, v1

    .line 881
    :cond_0
    :goto_0
    return p3

    .line 853
    :cond_1
    add-int v0, p2, p3

    array-length v3, p1

    if-gt v0, v3, :cond_2

    if-gez p2, :cond_3

    .line 854
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 861
    :cond_3
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    sub-int/2addr v0, v3

    .line 862
    const/4 v3, 0x1

    if-ge v0, v3, :cond_6

    .line 863
    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    .line 864
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->instream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->buffer:[B

    iget-object v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->buffer:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    .line 865
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    if-gtz v0, :cond_4

    .line 866
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->close()V

    move p3, v1

    .line 867
    goto :goto_0

    .line 869
    :cond_4
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    if-le p3, v0, :cond_5

    .line 870
    iget p3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    :cond_5
    :goto_1
    move v0, v2

    .line 878
    :goto_2
    if-ge v0, p3, :cond_0

    .line 879
    add-int v1, p2, v0

    iget-object v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->buffer:[B

    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 873
    :cond_6
    if-le p3, v0, :cond_5

    move p3, v0

    .line 874
    goto :goto_1
.end method
