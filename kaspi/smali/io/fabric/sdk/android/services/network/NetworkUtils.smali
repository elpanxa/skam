.class public final Lio/fabric/sdk/android/services/network/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static final getSSLSocketFactory(Lio/fabric/sdk/android/services/network/PinningInfoProvider;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 20
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 21
    new-instance v1, Lio/fabric/sdk/android/services/network/SystemKeyStore;

    invoke-interface {p0}, Lio/fabric/sdk/android/services/network/PinningInfoProvider;->getKeyStoreStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {p0}, Lio/fabric/sdk/android/services/network/PinningInfoProvider;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/fabric/sdk/android/services/network/SystemKeyStore;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 23
    new-instance v2, Lio/fabric/sdk/android/services/network/PinningTrustManager;

    invoke-direct {v2, v1, p0}, Lio/fabric/sdk/android/services/network/PinningTrustManager;-><init>(Lio/fabric/sdk/android/services/network/SystemKeyStore;Lio/fabric/sdk/android/services/network/PinningInfoProvider;)V

    .line 24
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v4, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
