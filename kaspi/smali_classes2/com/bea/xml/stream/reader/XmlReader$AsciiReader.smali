.class final Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;
.super Lcom/bea/xml/stream/reader/XmlReader$BaseReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bea/xml/stream/reader/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsciiReader"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    const-string v0, "US-ASCII"

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

    .line 797
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->instream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    move p3, v1

    .line 836
    :cond_0
    :goto_0
    return p3

    .line 803
    :cond_1
    add-int v0, p2, p3

    array-length v3, p1

    if-gt v0, v3, :cond_2

    if-gez p2, :cond_3

    .line 804
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 811
    :cond_3
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    sub-int/2addr v0, v3

    .line 812
    const/4 v3, 0x1

    if-ge v0, v3, :cond_6

    .line 813
    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    .line 814
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->instream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->buffer:[B

    iget-object v4, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->buffer:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    .line 815
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    if-gtz v0, :cond_4

    .line 816
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->close()V

    move p3, v1

    .line 817
    goto :goto_0

    .line 819
    :cond_4
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    if-le p3, v0, :cond_5

    .line 820
    iget p3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    :cond_5
    :goto_1
    move v0, v2

    .line 828
    :goto_2
    if-ge v0, p3, :cond_0

    .line 829
    iget-object v1, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->buffer:[B

    iget v2, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    aget-byte v1, v1, v2

    .line 830
    if-gez v1, :cond_7

    .line 831
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal ASCII character, 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_6
    if-le p3, v0, :cond_5

    move p3, v0

    .line 824
    goto :goto_1

    .line 834
    :cond_7
    add-int v2, p2, v0

    int-to-char v1, v1

    aput-char v1, p1, v2

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
