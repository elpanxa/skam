.class public Lio/casper/android/c/b/b/a/a/d/a;
.super Ljava/lang/Object;
.source "AttestationConfiguration.java"


# instance fields
.field private apkCertificateDigest:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apk_certificate_digest"
    .end annotation
.end field

.field private apkDigest:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apk_digest"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/d/a;->apkDigest:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/d/a;->apkCertificateDigest:Ljava/lang/String;

    return-object v0
.end method
