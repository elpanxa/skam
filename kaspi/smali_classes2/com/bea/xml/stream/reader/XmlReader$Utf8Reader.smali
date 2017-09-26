.class final Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;
.super Lcom/bea/xml/stream/reader/XmlReader$BaseReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bea/xml/stream/reader/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Utf8Reader"
.end annotation


# instance fields
.field private nextChar:C


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;-><init>(Ljava/io/InputStream;)V

    .line 616
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public read([CII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 622
    .line 624
    if-gtz p3, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v2

    .line 629
    :cond_1
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-gez p2, :cond_3

    .line 630
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 633
    :cond_3
    iget-char v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    if-eqz v0, :cond_13

    .line 634
    const/4 v5, 0x1

    add-int v0, p2, v2

    iget-char v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    aput-char v1, p1, v0

    .line 635
    iput-char v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    move v0, v2

    .line 638
    :goto_1
    if-ge v5, p3, :cond_4

    .line 640
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    if-gt v0, v1, :cond_6

    .line 641
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->instream:Ljava/io/InputStream;

    if-nez v0, :cond_5

    move v0, v4

    .line 775
    :cond_4
    :goto_2
    if-lez v5, :cond_11

    move v2, v5

    .line 776
    goto :goto_0

    .line 645
    :cond_5
    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 646
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->instream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    .line 647
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    if-gtz v0, :cond_6

    .line 648
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->close()V

    move v0, v4

    .line 650
    goto :goto_2

    .line 663
    :cond_6
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 664
    and-int/lit16 v0, v1, 0x80

    if-nez v0, :cond_7

    .line 666
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 667
    add-int/lit8 v0, v5, 0x1

    add-int v3, p2, v5

    int-to-char v5, v1

    aput-char v5, p1, v3

    move v5, v0

    move v0, v1

    .line 668
    goto :goto_1

    .line 675
    :cond_7
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xe0

    const/16 v3, 0xc0

    if-ne v1, v3, :cond_9

    .line 680
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v0, 0x1

    :try_start_1
    aget-byte v0, v3, v0

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v3, v0, 0x6

    .line 681
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v1, 0x1

    :try_start_2
    aget-byte v1, v6, v1
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v1, v3

    .line 737
    :cond_8
    :goto_3
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    if-le v0, v3, :cond_e

    .line 738
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    sub-int/2addr v7, v8

    invoke-static {v0, v3, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    .line 741
    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 742
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->instream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget-object v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    array-length v7, v7

    iget v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    sub-int/2addr v7, v8

    invoke-virtual {v0, v3, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 744
    if-gez v0, :cond_d

    .line 745
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->close()V

    .line 746
    new-instance v0, Ljava/io/CharConversionException;

    const-string v1, "Partial UTF-8 char"

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xf0

    const/16 v3, 0xe0

    if-ne v1, v3, :cond_a

    .line 687
    iget-object v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v3, v0, 0x1

    :try_start_4
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    .line 688
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v1, v3, 0x1

    :try_start_5
    aget-byte v3, v6, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v0

    .line 689
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v0, v1, 0x1

    :try_start_6
    aget-byte v1, v6, v1

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v1, v3

    .line 694
    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xf8

    const/16 v3, 0xf0

    if-ne v1, v3, :cond_c

    .line 695
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v1, v0, 0x1

    :try_start_7
    aget-byte v0, v3, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v3, v0, 0x12

    .line 696
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    add-int/lit8 v0, v1, 0x1

    :try_start_8
    aget-byte v1, v6, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v3, v1

    .line 697
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    add-int/lit8 v1, v0, 0x1

    :try_start_9
    aget-byte v0, v6, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    add-int/2addr v3, v0

    .line 698
    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v0, v1, 0x1

    :try_start_a
    aget-byte v1, v6, v1

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v1, v3

    .line 703
    const v3, 0x10ffff

    if-le v1, v3, :cond_b

    .line 704
    new-instance v3, Ljava/io/CharConversionException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "UTF-8 encoding of character 0x00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, " can\'t be converted to Unicode."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 726
    :catch_0
    move-exception v1

    :goto_4
    move v1, v2

    .line 728
    goto/16 :goto_3

    .line 710
    :cond_b
    const v3, 0xffff

    if-le v1, v3, :cond_8

    .line 712
    const/high16 v3, 0x10000

    sub-int/2addr v1, v3

    .line 713
    const v3, 0xdc00

    and-int/lit16 v6, v1, 0x3ff

    add-int/2addr v3, v6

    int-to-char v3, v3

    iput-char v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    .line 714
    const v3, 0xd800

    shr-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    .line 715
    goto/16 :goto_3

    .line 719
    :cond_c
    new-instance v1, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unconvertible UTF-8 character beginning with 0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    .line 749
    :cond_d
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    move v0, v1

    .line 750
    goto/16 :goto_1

    .line 756
    :cond_e
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    :goto_5
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    if-ge v3, v0, :cond_10

    .line 757
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xc0

    const/16 v6, 0x80

    if-eq v3, v6, :cond_f

    .line 758
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->close()V

    .line 759
    new-instance v0, Ljava/io/CharConversionException;

    const-string v1, "Malformed UTF-8 char -- is an XML encoding declaration missing?"

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_f
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    goto :goto_5

    .line 769
    :cond_10
    add-int/lit8 v3, v5, 0x1

    add-int v0, p2, v5

    int-to-char v5, v1

    aput-char v5, p1, v0

    .line 770
    iget-char v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    if-eqz v0, :cond_12

    if-ge v3, p3, :cond_12

    .line 771
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v3, p2

    iget-char v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    aput-char v5, p1, v3

    .line 772
    iput-char v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    :goto_6
    move v5, v0

    move v0, v1

    .line 774
    goto/16 :goto_1

    .line 777
    :cond_11
    if-ne v0, v4, :cond_0

    move v2, v4

    goto/16 :goto_0

    .line 726
    :catch_1
    move-exception v0

    move v0, v1

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move v0, v3

    goto/16 :goto_4

    :cond_12
    move v0, v3

    goto :goto_6

    :cond_13
    move v0, v2

    move v5, v2

    goto/16 :goto_1
.end method
