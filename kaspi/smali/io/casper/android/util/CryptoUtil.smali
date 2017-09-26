.class public Lio/casper/android/util/CryptoUtil;
.super Ljava/lang/Object;
.source "CryptoUtil.java"


# static fields
.field public static final ALG_MD5:Ljava/lang/String; = "MD5"

.field public static final ALG_RSA:Ljava/lang/String; = "RSA"

.field public static final ALG_SHA_1:Ljava/lang/String; = "SHA1"

.field public static final ALG_SHA_256:Ljava/lang/String; = "SHA-256"

.field public static final MAC_HMACSHA256:Ljava/lang/String; = "HmacSHA256"

.field private static final TAG:Ljava/lang/String; = "CryptoUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 71
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 72
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    .line 74
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 75
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 76
    mul-int/lit8 v4, v0, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v1, v5

    aput-char v5, v2, v4

    .line 77
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v2, v4

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getHMACSHA256([B[B)[B
    .locals 3

    .prologue
    .line 114
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Lio/casper/android/util/CryptoUtil;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 120
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "CryptoUtil"

    const-string v2, "doFinal failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 3

    .prologue
    .line 48
    :try_start_0
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "CryptoUtil"

    const-string v2, "Getting instance of KeyFactory failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const-string v0, "MD5"

    invoke-static {v0}, Lio/casper/android/util/CryptoUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/util/CryptoUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 3

    .prologue
    .line 24
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v1, "CryptoUtil"

    const-string v2, "Getting instance of Mac failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3

    .prologue
    .line 36
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "CryptoUtil"

    const-string v2, "Getting instance of MessageDigest failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSHA256([B)[B
    .locals 1

    .prologue
    .line 100
    const-string v0, "SHA-256"

    invoke-static {v0}, Lio/casper/android/util/CryptoUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 3

    .prologue
    .line 60
    :try_start_0
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "CryptoUtil"

    const-string v2, "Getting instance of Signature failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method
