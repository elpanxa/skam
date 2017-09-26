.class final Lfr/tkeunebr/gravatar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final SPECIAL_CHARS:Ljava/lang/String; = " %$&+,/:;=?@<>#%"

.field private static final sBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method static convertEmailToHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 27
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lfr/tkeunebr/gravatar/Utils;->hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 31
    :goto_0
    return-object p0

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0

    .line 28
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 36
    sget-object v1, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-char v3, v1, v0

    .line 38
    invoke-static {v3}, Lfr/tkeunebr/gravatar/Utils;->isUnsafe(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    sget-object v4, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    sget-object v4, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    div-int/lit8 v5, v3, 0x10

    invoke-static {v5}, Lfr/tkeunebr/gravatar/Utils;->toHex(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    sget-object v4, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Lfr/tkeunebr/gravatar/Utils;->toHex(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    sget-object v4, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 46
    :cond_1
    sget-object v0, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 15
    sget-object v1, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p0, v0

    .line 17
    sget-object v3, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lfr/tkeunebr/gravatar/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isUnsafe(C)Z
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x80

    if-gt p0, v0, :cond_0

    if-ltz p0, :cond_0

    const-string v0, " %$&+,/:;=?@<>#%"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toHex(I)C
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    :goto_0
    int-to-char v0, v0

    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x41

    add-int/lit8 v0, v0, -0xa

    goto :goto_0
.end method
