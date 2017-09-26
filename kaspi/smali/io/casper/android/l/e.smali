.class public Lio/casper/android/l/e;
.super Lio/casper/android/l/n;
.source "BitStampManager.java"


# static fields
.field private static final PREFERENCE_BITSTAMP_ENABLED:Ljava/lang/String; = "pref_bitstamp_enabled"

.field private static final PREFERENCE_BITSTAMP_SIGNATURE:Ljava/lang/String; = "pref_bitstamp_signature"

.field private static final PREFERENCE_BITSTAMP_TOKENS:Ljava/lang/String; = "pref_bitstamp_tokens"

.field private static final TAG:Ljava/lang/String; = "BitStampManager"


# instance fields
.field private mAPKBitStampFolder:Ljava/io/File;

.field private mBitStampAPKFile:Ljava/io/File;

.field private mBitStampFolder:Ljava/io/File;

.field public mLibBitStampFolder:Ljava/io/File;

.field public mOptBitStampFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lio/casper/android/l/n;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/e;->mInternalDataFolder:Ljava/io/File;

    const-string v2, "bitstamp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/e;->mBitStampFolder:Ljava/io/File;

    .line 39
    invoke-virtual {p0}, Lio/casper/android/l/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/l/e;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const-string v0, "pref_bitstamp_signature"

    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 45
    invoke-static {p1}, Lio/casper/android/util/CryptoUtil;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    const-string v0, "default"

    .line 50
    :cond_0
    iget-object v1, p0, Lio/casper/android/l/e;->mBitStampFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 52
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/l/e;->mBitStampFolder:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lio/casper/android/l/e;->mAPKBitStampFolder:Ljava/io/File;

    .line 53
    iget-object v1, p0, Lio/casper/android/l/e;->mAPKBitStampFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 55
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/casper/android/l/e;->mAPKBitStampFolder:Ljava/io/File;

    const-string v3, "bitstamp_%s.apk"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lio/casper/android/l/e;->mBitStampAPKFile:Ljava/io/File;

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/e;->mAPKBitStampFolder:Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/e;->mLibBitStampFolder:Ljava/io/File;

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/e;->mAPKBitStampFolder:Ljava/io/File;

    const-string v2, "opt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/e;->mOptBitStampFolder:Ljava/io/File;

    .line 60
    iget-object v0, p0, Lio/casper/android/l/e;->mLibBitStampFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    iget-object v0, p0, Lio/casper/android/l/e;->mOptBitStampFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 63
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 87
    const-string v0, "pref_bitstamp_enabled"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/e;->c(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method
