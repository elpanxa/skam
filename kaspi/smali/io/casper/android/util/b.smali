.class public Lio/casper/android/util/b;
.super Ljava/lang/Object;
.source "ApplicationSignatures.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationSignatures"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/security/cert/X509Certificate;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 28
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 29
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 30
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v0, "ApplicationSignatures"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get Application Certificate"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    invoke-static {p0}, Lio/casper/android/util/b;->a(Landroid/content/Context;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 45
    const-string v1, "SHA1"

    invoke-static {v1}, Lio/casper/android/util/CryptoUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 47
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 50
    invoke-static {v0}, Lio/casper/android/util/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v0, "ApplicationSignatures"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to get Certificate SHA1"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
