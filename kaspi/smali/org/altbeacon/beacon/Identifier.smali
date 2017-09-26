.class public Lorg/altbeacon/beacon/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/altbeacon/beacon/Identifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECIMAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX_PATTERN:Ljava/util/regex/Pattern;

.field private static final UUID_PATTERN:Ljava/util/regex/Pattern;

.field private static final hexArray:[C

.field private static final maxInteger:Ljava/math/BigInteger;


# instance fields
.field private final mValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "^0x[0-9A-Fa-f]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    const-string v0, "^[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    .line 18
    const-string v0, "^[0-9A-Fa-f]{8}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{12}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->UUID_PATTERN:Ljava/util/regex/Pattern;

    .line 19
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->hexArray:[C

    .line 20
    const-wide/32 v0, 0xffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->maxInteger:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Identifier;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "identifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    iput-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    .line 125
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "identifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    .line 136
    return-void
.end method

.method public static fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;
    .locals 2

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    if-ltz p1, :cond_1

    array-length v0, p0

    if-le p1, v0, :cond_2

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "start < 0 || start > bytes.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    array-length v0, p0

    if-le p2, v0, :cond_3

    .line 100
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "end > bytes.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_3
    if-le p1, p2, :cond_4

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start > end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 107
    if-eqz p3, :cond_5

    .line 108
    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->reverseArray([B)V

    .line 110
    :cond_5
    new-instance v1, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {v1, v0}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object v1
.end method

.method public static fromInt(I)Lorg/altbeacon/beacon/Identifier;
    .locals 3

    .prologue
    .line 69
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must be between 0 and 65535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 75
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 76
    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 78
    new-instance v1, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {v1, v0}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object v1
.end method

.method public static parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;
    .locals 3

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stringValue == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    sget-object v0, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->parseHex(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 40
    :cond_1
    sget-object v0, Lorg/altbeacon/beacon/Identifier;->UUID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->parseHex(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Lorg/altbeacon/beacon/Identifier;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 44
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_3

    sget-object v1, Lorg/altbeacon/beacon/Identifier;->maxInteger:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_4

    .line 45
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decimal formatted integers must be between 0 and 65535. Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_4
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->fromInt(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseHex(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;
    .locals 5

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    .line 56
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 57
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 58
    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {v0, v2}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object v0
.end method

.method private static reverseArray([B)V
    .locals 3

    .prologue
    .line 191
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 192
    aget-byte v1, p0, v0

    .line 193
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    .line 194
    aput-byte v2, p0, v0

    .line 195
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-byte v1, p0, v2

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private static toHexString([BII)Ljava/lang/String;
    .locals 6

    .prologue
    .line 228
    mul-int/lit8 v0, p2, 0x2

    new-array v1, v0, [C

    .line 229
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 230
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 231
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lorg/altbeacon/beacon/Identifier;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 232
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/altbeacon/beacon/Identifier;->hexArray:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/Identifier;->compareTo(Lorg/altbeacon/beacon/Identifier;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/altbeacon/beacon/Identifier;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 269
    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v2, v2

    iget-object v4, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v4, v4

    if-eq v2, v4, :cond_2

    .line 270
    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v2, v2

    iget-object v3, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 270
    goto :goto_0

    :cond_2
    move v2, v3

    .line 272
    :goto_1
    iget-object v4, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 273
    iget-object v4, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v4, v4, v2

    iget-object v5, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v5, v5, v2

    if-eq v4, v5, :cond_3

    .line 274
    iget-object v3, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v3, v3, v2

    iget-object v4, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v2, v4, v2

    if-lt v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 272
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v3

    .line 277
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 220
    instance-of v0, p1, Lorg/altbeacon/beacon/Identifier;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 223
    :cond_0
    check-cast p1, Lorg/altbeacon/beacon/Identifier;

    .line 224
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    iget-object v1, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getByteCount()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toByteArrayOfSpecifiedEndianness(Z)[B
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 183
    if-nez p1, :cond_0

    .line 184
    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->reverseArray([B)V

    .line 187
    :cond_0
    return-object v0
.end method

.method public toHexString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/Identifier;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInt()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only supported for Identifiers with max byte length of 2"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    .line 168
    :goto_0
    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 169
    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toUuidString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toHexString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toUuidString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 251
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only available for values with length of 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lorg/altbeacon/beacon/Identifier;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-static {v1, v4, v3}, Lorg/altbeacon/beacon/Identifier;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-static {v1, v5, v3}, Lorg/altbeacon/beacon/Identifier;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    const/16 v2, 0x8

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/Identifier;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    const/16 v2, 0xa

    invoke-static {v1, v2, v5}, Lorg/altbeacon/beacon/Identifier;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
