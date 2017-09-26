.class Lcom/adsdk/sdk/mraid/MraidCommandUseCustomClose;
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
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommand;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    .line 196
    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandUseCustomClose;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidCommandUseCustomClose;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->useCustomClose(Z)V

    .line 202
    return-void
.end method
