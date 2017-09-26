.class public Lcom/caverock/androidsvg/NumberParser;
.super Ljava/lang/Object;
.source "NumberParser.java"


# static fields
.field static TOO_BIG:J

.field private static final negativePowersOf10:[F

.field private static final positivePowersOf10:[F


# instance fields
.field exponent:I

.field isNegative:Z

.field numDigits:I

.field pos:I

.field significand:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 42
    const-wide v0, 0xcccccccccccccccL

    sput-wide v0, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    .line 246
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    .line 252
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    return-void

    .line 246
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
        0x51ba43b7    # 9.9999998E10f
        0x5368d4a5    # 1.0E12f
        0x551184e7    # 9.9999998E12f
        0x56b5e621    # 1.0E14f
        0x58635fa9    # 9.9999999E14f
        0x5a0e1bca    # 1.00000003E16f
        0x5bb1a2bc    # 9.9999998E16f
        0x5d5e0b6b    # 9.9999998E17f
        0x5f0ac723    # 1.0E19f
        0x60ad78ec    # 1.0E20f
        0x6258d727    # 1.0E21f
        0x64078678    # 1.0E22f
        0x65a96816    # 1.0E23f
        0x6753c21c    # 1.0E24f
        0x69045951    # 1.0E25f
        0x6aa56fa6    # 1.0E26f
        0x6c4ecb8f    # 1.0E27f
        0x6e013f39    # 1.0E28f
        0x6fa18f08    # 1.0E29f
        0x7149f2ca    # 1.0E30f
        0x72fc6f7c    # 1.0E31f
        0x749dc5ae    # 1.0E32f
        0x76453719    # 1.0E33f
        0x77f684df    # 1.0E34f
        0x799a130c    # 1.0E35f
        0x7b4097ce    # 1.0E36f
        0x7cf0bdc2    # 1.0E37f
        0x7e967699    # 1.0E38f
    .end array-data

    .line 252
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3c23d70a    # 0.01f
        0x3a83126f    # 0.001f
        0x38d1b717    # 1.0E-4f
        0x3727c5ac    # 1.0E-5f
        0x358637bd    # 1.0E-6f
        0x33d6bf95    # 1.0E-7f
        0x322bcc77    # 1.0E-8f
        0x3089705f    # 1.0E-9f
        0x2edbe6ff    # 1.0E-10f
        0x2d2febff    # 1.0E-11f
        0x2b8cbccc    # 1.0E-12f
        0x29e12e13    # 1.0E-13f
        0x283424dc    # 1.0E-14f
        0x26901d7d    # 1.0E-15f
        0x24e69595    # 1.0E-16f
        0x233877aa    # 1.0E-17f
        0x219392ef    # 1.0E-18f
        0x1fec1e4a    # 1.0E-19f
        0x1e3ce508    # 1.0E-20f
        0x1c971da0    # 1.0E-21f
        0x1af1c901    # 1.0E-22f
        0x19416d9a    # 1.0E-23f
        0x179abe15    # 1.0E-24f
        0x15f79688    # 1.0E-25f
        0x14461206    # 1.0E-26f
        0x129e74d2    # 1.0E-27f
        0x10fd87b6    # 1.0E-28f
        0xf4ad2f8    # 1.0E-29f
        0xda24260    # 1.0E-30f
        0xc01ceb3    # 1.0E-31f
        0xa4fb11f    # 1.0E-32f
        0x8a6274c    # 1.0E-33f
        0x704ec3d    # 1.0E-34f
        0x554ad2e    # 1.0E-35f
        0x3aa2425    # 1.0E-36f
        0x2081cea    # 1.0E-37f
        0x6ce3ee    # 1.0E-38f
    .end array-data
.end method

.method public constructor <init>(ZJII)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/caverock/androidsvg/NumberParser;->isNegative:Z

    .line 48
    iput-wide p2, p0, Lcom/caverock/androidsvg/NumberParser;->significand:J

    .line 49
    iput p4, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    .line 50
    iput p5, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 51
    return-void
.end method

.method public static parseNumber(Ljava/lang/String;)Lcom/caverock/androidsvg/NumberParser;
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)Lcom/caverock/androidsvg/NumberParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseNumber(Ljava/lang/String;II)Lcom/caverock/androidsvg/NumberParser;
    .locals 18

    .prologue
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    const-wide/16 v10, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v6, 0x0

    .line 86
    const/4 v4, 0x0

    .line 90
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_0

    .line 91
    const/4 v2, 0x0

    .line 242
    :goto_0
    return-object v2

    .line 93
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 94
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v3, v2

    :goto_1
    move v2, v4

    move/from16 v12, p1

    move-wide v4, v10

    .line 102
    :goto_2
    move/from16 v0, p2

    if-ge v12, v0, :cond_7

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 105
    const/16 v10, 0x30

    if-ne v13, v10, :cond_2

    .line 107
    if-nez v9, :cond_1

    .line 108
    add-int/lit8 v8, v8, 0x1

    move/from16 v16, v6

    move v6, v8

    move/from16 v17, v7

    move v7, v9

    move-wide v8, v4

    move/from16 v5, v17

    move/from16 v4, v16

    .line 149
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide v4, v8

    move v8, v6

    move v9, v7

    move/from16 v6, v16

    move/from16 v7, v17

    goto :goto_2

    .line 95
    :pswitch_1
    const/4 v2, 0x1

    .line 97
    :pswitch_2
    add-int/lit8 p1, p1, 0x1

    move v3, v2

    goto :goto_1

    .line 111
    :cond_1
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v6

    move v6, v8

    move/from16 v17, v7

    move v7, v9

    move-wide v8, v4

    move/from16 v5, v17

    move/from16 v4, v16

    goto :goto_3

    .line 114
    :cond_2
    const/16 v10, 0x31

    if-lt v13, v10, :cond_6

    const/16 v10, 0x39

    if-gt v13, v10, :cond_6

    .line 117
    add-int/2addr v9, v7

    move-wide v10, v4

    move v4, v7

    .line 118
    :goto_4
    if-lez v4, :cond_4

    .line 119
    sget-wide v14, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v5, v10, v14

    if-lez v5, :cond_3

    .line 121
    const/4 v2, 0x0

    goto :goto_0

    .line 123
    :cond_3
    const-wide/16 v14, 0xa

    mul-long/2addr v10, v14

    .line 124
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 127
    :cond_4
    sget-wide v14, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v5, v10, v14

    if-lez v5, :cond_5

    .line 130
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    :cond_5
    const-wide/16 v14, 0xa

    mul-long/2addr v10, v14

    add-int/lit8 v5, v13, -0x30

    int-to-long v14, v5

    add-long/2addr v10, v14

    .line 133
    add-int/lit8 v5, v9, 0x1

    .line 135
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-gez v7, :cond_17

    .line 136
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    :cond_6
    const/16 v10, 0x2e

    if-ne v13, v10, :cond_7

    .line 140
    if-eqz v6, :cond_8

    .line 152
    :cond_7
    if-eqz v6, :cond_9

    add-int/lit8 v10, v2, 0x1

    if-ne v12, v10, :cond_9

    .line 155
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 144
    :cond_8
    sub-int v2, v12, p1

    .line 145
    const/4 v6, 0x1

    move/from16 v16, v6

    move v6, v8

    move/from16 v17, v7

    move v7, v9

    move-wide v8, v4

    move/from16 v5, v17

    move/from16 v4, v16

    goto :goto_3

    .line 159
    :cond_9
    if-nez v9, :cond_16

    .line 160
    if-nez v8, :cond_a

    .line 162
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 166
    :cond_a
    const/4 v9, 0x1

    move v10, v9

    .line 169
    :goto_5
    if-eqz v6, :cond_b

    .line 170
    sub-int/2addr v2, v8

    sub-int v7, v2, v10

    .line 176
    :cond_b
    move/from16 v0, p2

    if-ge v12, v0, :cond_15

    .line 178
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 179
    const/16 v6, 0x45

    if-eq v2, v6, :cond_c

    const/16 v6, 0x65

    if-ne v2, v6, :cond_15

    .line 181
    :cond_c
    const/4 v2, 0x0

    .line 182
    const/4 v8, 0x0

    .line 184
    add-int/lit8 v6, v12, 0x1

    .line 185
    move/from16 v0, p2

    if-ne v6, v0, :cond_d

    .line 188
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 191
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    packed-switch v9, :pswitch_data_1

    :goto_6
    :pswitch_3
    move v9, v8

    move v8, v6

    .line 199
    :goto_7
    move/from16 v0, p2

    if-ge v8, v0, :cond_f

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 202
    const/16 v12, 0x30

    if-lt v11, v12, :cond_f

    const/16 v12, 0x39

    if-gt v11, v12, :cond_f

    .line 204
    int-to-long v12, v9

    sget-wide v14, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_e

    .line 207
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 192
    :pswitch_4
    const/4 v2, 0x1

    .line 194
    :pswitch_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 209
    :cond_e
    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v11, v11, -0x30

    add-int/2addr v9, v11

    .line 210
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 217
    :cond_f
    if-ne v8, v6, :cond_10

    .line 219
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 222
    :cond_10
    if-eqz v2, :cond_12

    .line 223
    sub-int v6, v7, v9

    move v7, v8

    .line 236
    :goto_8
    add-int v2, v6, v10

    const/16 v8, 0x27

    if-gt v2, v8, :cond_11

    add-int v2, v6, v10

    const/16 v8, -0x2c

    if-ge v2, v8, :cond_13

    .line 237
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 225
    :cond_12
    add-int v6, v7, v9

    move v7, v8

    goto :goto_8

    .line 239
    :cond_13
    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-nez v2, :cond_14

    .line 240
    new-instance v2, Lcom/caverock/androidsvg/NumberParser;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/caverock/androidsvg/NumberParser;-><init>(ZJII)V

    goto/16 :goto_0

    .line 242
    :cond_14
    new-instance v2, Lcom/caverock/androidsvg/NumberParser;

    invoke-direct/range {v2 .. v7}, Lcom/caverock/androidsvg/NumberParser;-><init>(ZJII)V

    goto/16 :goto_0

    :cond_15
    move v6, v7

    move v7, v12

    goto :goto_8

    :cond_16
    move v10, v9

    goto/16 :goto_5

    :cond_17
    move v7, v5

    move v5, v4

    move v4, v6

    move v6, v8

    move-wide v8, v10

    goto/16 :goto_3

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    return v0
.end method

.method public value()F
    .locals 4

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/caverock/androidsvg/NumberParser;->significand:J

    long-to-float v0, v0

    .line 268
    iget v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    if-lez v1, :cond_2

    .line 270
    sget-object v1, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    iget v2, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    aget v1, v1, v2

    mul-float/2addr v0, v1

    .line 286
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/caverock/androidsvg/NumberParser;->isNegative:Z

    if-eqz v1, :cond_1

    neg-float v0, v0

    :cond_1
    return v0

    .line 272
    :cond_2
    iget v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    if-gez v1, :cond_0

    .line 277
    iget v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    const/16 v2, -0x26

    if-ge v1, v2, :cond_3

    .line 279
    float-to-double v0, v0

    const-wide v2, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 280
    iget v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    .line 283
    :cond_3
    sget-object v1, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    iget v2, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    neg-int v2, v2

    aget v1, v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method
