.class public Lcom/adsdk/sdk/customevents/CustomEvent;
.super Ljava/lang/Object;
.source "CustomEvent.java"


# instance fields
.field private className:Ljava/lang/String;

.field private optionalParameter:Ljava/lang/String;

.field private pixelUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/CustomEvent;->className:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/CustomEvent;->optionalParameter:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/adsdk/sdk/customevents/CustomEvent;->pixelUrl:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/CustomEvent;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/CustomEvent;->optionalParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getPixelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/CustomEvent;->pixelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/CustomEvent;->className:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setOptionalParameter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/CustomEvent;->optionalParameter:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPixelUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/CustomEvent;->pixelUrl:Ljava/lang/String;

    .line 31
    return-void
.end method
