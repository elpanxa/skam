.class Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "MarketRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/internal/MarketRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarketRedirectHandler"
.end annotation


# instance fields
.field private lastRedirectedUri:Ljava/net/URI;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastRedirectedUrl()Ljava/net/URI;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;->lastRedirectedUri:Ljava/net/URI;

    return-object v0
.end method

.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 2

    .prologue
    .line 118
    :try_start_0
    const-string v0, "Get location URI..."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;->lastRedirectedUri:Ljava/net/URI;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocationURI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;->lastRedirectedUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;->lastRedirectedUri:Ljava/net/URI;
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Lorg/apache/http/ProtocolException;->printStackTrace()V

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 2

    .prologue
    .line 98
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/revmob/internal/MarketRedirector;->isGooglePlayUri(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/revmob/internal/MarketRedirector;->isAmazonAppStoreUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;->lastRedirectedUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    goto :goto_0

    .line 112
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    goto :goto_0
.end method
