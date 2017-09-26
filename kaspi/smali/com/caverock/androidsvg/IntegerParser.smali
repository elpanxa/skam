.class public Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"


# instance fields
.field isNegative:Z

.field pos:I

.field value:J


# direct methods
.method public constructor <init>(ZJI)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/caverock/androidsvg/IntegerParser;->isNegative:Z

    .line 37
    iput-wide p2, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    .line 38
    iput p4, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    .line 39
    return-void
.end method

.method public static parseHex(Ljava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/IntegerParser;->parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .locals 10

    .prologue
    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x10

    const/4 v0, 0x0

    .line 137
    .line 138
    const-wide/16 v2, 0x0

    .line 142
    if-lt p1, p2, :cond_5

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 145
    :goto_1
    if-ge v1, p2, :cond_4

    .line 147
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 148
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    .line 150
    mul-long/2addr v2, v6

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 163
    :goto_2
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    goto :goto_0

    .line 152
    :cond_2
    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    const/16 v5, 0x46

    if-gt v4, v5, :cond_3

    .line 154
    mul-long/2addr v2, v6

    add-int/lit8 v4, v4, -0x41

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-long/2addr v2, v8

    goto :goto_2

    .line 156
    :cond_3
    const/16 v5, 0x61

    if-lt v4, v5, :cond_4

    const/16 v5, 0x66

    if-gt v4, v5, :cond_4

    .line 158
    mul-long/2addr v2, v6

    add-int/lit8 v4, v4, -0x61

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-long/2addr v2, v8

    goto :goto_2

    .line 170
    :cond_4
    if-eq v1, p1, :cond_0

    .line 174
    new-instance v0, Lcom/caverock/androidsvg/IntegerParser;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/caverock/androidsvg/IntegerParser;-><init>(ZJI)V

    goto :goto_0

    :cond_5
    move v1, p1

    goto :goto_1
.end method

.method public static parseInt(Ljava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseInt(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .locals 10

    .prologue
    const-wide/16 v8, 0xa

    const/4 v1, 0x0

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    const-wide/16 v2, 0x0

    .line 72
    if-lt p1, p2, :cond_0

    move-object v0, v1

    .line 109
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 76
    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v4, p1

    .line 84
    :goto_2
    if-ge v4, p2, :cond_3

    .line 86
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 87
    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    const/16 v6, 0x39

    if-gt v5, v6, :cond_3

    .line 89
    if-eqz v0, :cond_1

    .line 90
    mul-long/2addr v2, v8

    add-int/lit8 v5, v5, -0x30

    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 91
    const-wide/32 v6, -0x80000000

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    move-object v0, v1

    .line 92
    goto :goto_0

    .line 77
    :pswitch_1
    const/4 v0, 0x1

    .line 79
    :pswitch_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 94
    :cond_1
    mul-long/2addr v2, v8

    add-int/lit8 v5, v5, -0x30

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 95
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    move-object v0, v1

    .line 96
    goto :goto_0

    .line 101
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 105
    :cond_3
    if-ne v4, p1, :cond_4

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_4
    new-instance v1, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/caverock/androidsvg/IntegerParser;-><init>(ZJI)V

    move-object v0, v1

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return v0
.end method

.method public value()I
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v0, v0

    return v0
.end method
