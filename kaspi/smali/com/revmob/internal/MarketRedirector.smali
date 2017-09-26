.class public Lcom/revmob/internal/MarketRedirector;
.super Ljava/lang/Object;
.source "MarketRedirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;
    }
.end annotation


# static fields
.field private static AMAZON_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static GOOGLE_PLAY_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static TIMEOUT_IN_SECONDS:I


# instance fields
.field private entity:Ljava/lang/String;

.field private httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x1e

    sput v0, Lcom/revmob/internal/MarketRedirector;->TIMEOUT_IN_SECONDS:I

    .line 19
    const-string v0, "details\\?id=[a-zA-Z0-9\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/revmob/internal/MarketRedirector;->GOOGLE_PLAY_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    const-string v0, "android\\?p=[a-zA-Z0-9\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/revmob/internal/MarketRedirector;->AMAZON_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    const-string v0, ""

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;

    invoke-direct {v2}, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/revmob/internal/MarketRedirector;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/RedirectHandler;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;

    invoke-direct {v1}, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/revmob/internal/MarketRedirector;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/RedirectHandler;)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/RedirectHandler;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/revmob/internal/MarketRedirector;->url:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/revmob/internal/MarketRedirector;->entity:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/revmob/internal/MarketRedirector;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 61
    iput-object p4, p0, Lcom/revmob/internal/MarketRedirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 63
    iget-object v0, p0, Lcom/revmob/internal/MarketRedirector;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/revmob/internal/MarketRedirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 64
    return-void
.end method

.method public static isAmazonAppStoreUri(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 32
    const-string v0, "amzn://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGooglePlayUri(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 28
    const-string v0, "market://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static rewriteMarketUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/revmob/internal/MarketRedirector;->GOOGLE_PLAY_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/revmob/internal/MarketRedirector;->AMAZON_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    :cond_0
    :goto_0
    return-object p0

    .line 42
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amzn://apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getMarketUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/revmob/internal/MarketRedirector;->getMarketUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarketUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    if-eqz p1, :cond_0

    const-string v0, "#click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/revmob/internal/MarketRedirector;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/revmob/internal/MarketRedirector;->isGooglePlayUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/revmob/internal/MarketRedirector;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/revmob/internal/MarketRedirector;->isAmazonAppStoreUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/revmob/internal/MarketRedirector;->url:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/revmob/internal/MarketRedirector;->post()Lorg/apache/http/HttpResponse;

    .line 77
    iget-object v0, p0, Lcom/revmob/internal/MarketRedirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    check-cast v0, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;

    invoke-virtual {v0}, Lcom/revmob/internal/MarketRedirector$MarketRedirectHandler;->getLastRedirectedUrl()Ljava/net/URI;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/MarketRedirector;->rewriteMarketUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method post()Lorg/apache/http/HttpResponse;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/revmob/internal/HTTPHelper;

    iget-object v1, p0, Lcom/revmob/internal/MarketRedirector;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-direct {v0, v1}, Lcom/revmob/internal/HTTPHelper;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V

    .line 88
    sget v1, Lcom/revmob/internal/MarketRedirector;->TIMEOUT_IN_SECONDS:I

    invoke-virtual {v0, v1}, Lcom/revmob/internal/HTTPHelper;->setTimeout(I)V

    .line 89
    iget-object v1, p0, Lcom/revmob/internal/MarketRedirector;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/internal/MarketRedirector;->entity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/HTTPHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
