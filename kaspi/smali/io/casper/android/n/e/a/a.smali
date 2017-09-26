.class public Lio/casper/android/n/e/a/a;
.super Ljava/lang/Object;
.source "StoryCipherUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StoryCipherUtil"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/CipherInputStream;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 21
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 22
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 25
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 26
    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 27
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, p0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "StoryCipherUtil"

    const-string v2, "Creating instance of Cipher failed with Exception"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method
