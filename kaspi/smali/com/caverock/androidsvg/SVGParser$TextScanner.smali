.class public Lcom/caverock/androidsvg/SVGParser$TextScanner;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TextScanner"
.end annotation


# instance fields
.field protected input:Ljava/lang/String;

.field protected inputLength:I

.field protected position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1990
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 1991
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    .line 1996
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    .line 1997
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    .line 1998
    return-void
.end method


# virtual methods
.method protected advanceChar()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2156
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_1

    .line 2162
    :cond_0
    :goto_0
    return v0

    .line 2158
    :cond_1
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2159
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v1, v2, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public ahead()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2229
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2230
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2231
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    .line 2232
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2233
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2234
    return-object v1
.end method

.method public checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2128
    if-nez p1, :cond_0

    .line 2129
    const/4 v0, 0x0

    .line 2132
    :goto_0
    return-object v0

    .line 2131
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2132
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 2073
    if-nez p1, :cond_0

    .line 2074
    const/4 v0, 0x0

    .line 2077
    :goto_0
    return-object v0

    .line 2076
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2077
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public consume(C)Z
    .locals 2

    .prologue
    .line 2137
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    .line 2138
    :goto_0
    if-eqz v0, :cond_0

    .line 2139
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2140
    :cond_0
    return v0

    .line 2137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public consume(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 2146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2147
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2148
    :goto_0
    if-eqz v0, :cond_0

    .line 2149
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2150
    :cond_0
    return v0

    .line 2147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public empty()Z
    .locals 2

    .prologue
    .line 2005
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLetter()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2262
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_1

    .line 2265
    :cond_0
    :goto_0
    return v0

    .line 2264
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2265
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isEOL(I)Z
    .locals 1

    .prologue
    .line 2024
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWhitespace(I)Z
    .locals 1

    .prologue
    .line 2010
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextChar()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 2091
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_0

    .line 2092
    const/4 v0, 0x0

    .line 2093
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public nextFlag()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x31

    .line 2113
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_1

    .line 2120
    :cond_0
    :goto_0
    return-object v0

    .line 2115
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2116
    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_0

    .line 2117
    :cond_2
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2118
    if-ne v1, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public nextFloat()Ljava/lang/Float;
    .locals 3

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)Lcom/caverock/androidsvg/NumberParser;

    move-result-object v0

    .line 2045
    if-nez v0, :cond_0

    .line 2046
    const/4 v0, 0x0

    .line 2048
    :goto_0
    return-object v0

    .line 2047
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2048
    invoke-virtual {v0}, Lcom/caverock/androidsvg/NumberParser;->value()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public nextFunction()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2206
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 2221
    :goto_0
    return-object v0

    .line 2208
    :cond_0
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2210
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2211
    :goto_1
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3

    .line 2212
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_1

    .line 2213
    :cond_3
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2214
    :goto_2
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2215
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_2

    .line 2216
    :cond_4
    const/16 v4, 0x28

    if-ne v0, v4, :cond_5

    .line 2217
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2218
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2220
    :cond_5
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v0, v1

    .line 2221
    goto :goto_0
.end method

.method public nextInteger()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v0

    .line 2083
    if-nez v0, :cond_0

    .line 2084
    const/4 v0, 0x0

    .line 2086
    :goto_0
    return-object v0

    .line 2085
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2086
    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public nextLength()Lcom/caverock/androidsvg/SVG$Length;
    .locals 3

    .prologue
    .line 2098
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 2099
    if-nez v1, :cond_0

    .line 2100
    const/4 v0, 0x0

    .line 2105
    :goto_0
    return-object v0

    .line 2101
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v2

    .line 2102
    if-nez v2, :cond_1

    .line 2103
    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_0

    .line 2105
    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_0
.end method

.method public nextQuotedString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 2273
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2288
    :cond_0
    :goto_0
    return-object v0

    .line 2275
    :cond_1
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2276
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2278
    const/16 v1, 0x27

    if-eq v3, v1, :cond_2

    const/16 v1, 0x22

    if-ne v3, v1, :cond_0

    .line 2280
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    .line 2281
    :goto_1
    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    .line 2282
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    goto :goto_1

    .line 2283
    :cond_3
    if-ne v1, v4, :cond_4

    .line 2284
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    .line 2287
    :cond_4
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2288
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2174
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken(C)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2184
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return-object v0

    .line 2187
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2188
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 2191
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2192
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2193
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2194
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_1

    .line 2196
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public nextUnit()Lcom/caverock/androidsvg/SVG$Unit;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2239
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2253
    :cond_0
    :goto_0
    return-object v0

    .line 2241
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2242
    const/16 v2, 0x25

    if-ne v1, v2, :cond_2

    .line 2243
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2244
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_0

    .line 2246
    :cond_2
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_0

    .line 2249
    :try_start_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v1

    .line 2250
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2251
    goto :goto_0

    .line 2252
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public possibleNextFloat()Ljava/lang/Float;
    .locals 3

    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2059
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)Lcom/caverock/androidsvg/NumberParser;

    move-result-object v0

    .line 2060
    if-nez v0, :cond_0

    .line 2061
    const/4 v0, 0x0

    .line 2063
    :goto_0
    return-object v0

    .line 2062
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2063
    invoke-virtual {v0}, Lcom/caverock/androidsvg/NumberParser;->value()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public restOfText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2296
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2297
    const/4 v0, 0x0

    .line 2301
    :goto_0
    return-object v0

    .line 2299
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2300
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2301
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public skipCommaWhitespace()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2031
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2032
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_1

    .line 2038
    :cond_0
    :goto_0
    return v0

    .line 2034
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 2036
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2037
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2038
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public skipWhitespace()V
    .locals 2

    .prologue
    .line 2015
    :goto_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v0, v1, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2020
    :cond_0
    return-void

    .line 2018
    :cond_1
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0
.end method
