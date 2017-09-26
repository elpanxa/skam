.class public Lcom/revmob/internal/RevMobEncryption;
.super Ljava/lang/Object;
.source "RevMobEncryption.java"


# instance fields
.field private MINIMIUM_DATA_LENGTH:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x18

    iput v0, p0, Lcom/revmob/internal/RevMobEncryption;->MINIMIUM_DATA_LENGTH:I

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 67
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 68
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 69
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 68
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 72
    :cond_0
    return-object v2
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    sget-object v0, Lcom/revmob/RevMobConstants;->ENCRYPTION:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/revmob/internal/RevMobEncryption;->MINIMIUM_DATA_LENGTH:I

    if-lt v0, v1, :cond_0

    .line 41
    const-string v0, "f188c2f6176602368ab346d0b40f1098ed350c3c46595e9981a8db1db9d865b7"

    invoke-static {v0}, Lcom/revmob/internal/RevMobEncryption;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    const-string v1, "3066546c3043314e614c4b764f433338"

    invoke-static {v1}, Lcom/revmob/internal/RevMobEncryption;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 44
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    .line 49
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 50
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 51
    const/4 v1, 0x2

    invoke-virtual {v3, v1, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 52
    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 53
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 61
    :cond_0
    return-object p1

    .line 54
    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 14
    sget-object v0, Lcom/revmob/RevMobConstants;->ENCRYPTION:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 15
    const-string v0, "f188c2f6176602368ab346d0b40f1098ed350c3c46595e9981a8db1db9d865b7"

    invoke-static {v0}, Lcom/revmob/internal/RevMobEncryption;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 16
    const-string v1, "3066546c3043314e614c4b764f433338"

    invoke-static {v1}, Lcom/revmob/internal/RevMobEncryption;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 18
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    .line 23
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 24
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v3, v1, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 34
    :cond_0
    return-object p1

    .line 27
    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
