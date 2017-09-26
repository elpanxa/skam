.class Lcom/adsdk/sdk/mraid/MraidCommandSetResizeProperties;
.super Lcom/adsdk/sdk/mraid/MraidCommand;
.source "MraidCommand.java"


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adsdk/sdk/mraid/MraidView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommand;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    .line 252
    return-void
.end method


# virtual methods
.method execute()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandSetResizeProperties;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->SET_RESIZE_PROPERTIES:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action setResizeProperties."

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 257
    return-void
.end method
