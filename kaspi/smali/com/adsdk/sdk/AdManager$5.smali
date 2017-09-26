.class Lcom/adsdk/sdk/AdManager$5;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/AdManager;->loadCustomEventFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;

.field private final synthetic val$event:Lcom/adsdk/sdk/customevents/CustomEvent;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/customevents/CustomEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$5;->this$0:Lcom/adsdk/sdk/AdManager;

    iput-object p2, p0, Lcom/adsdk/sdk/AdManager$5;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$5;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$19(Lcom/adsdk/sdk/AdManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 372
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$5;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$17(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$5;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->customFullscreenListener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;
    invoke-static {v2}, Lcom/adsdk/sdk/AdManager;->access$20(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    move-result-object v2

    iget-object v3, p0, Lcom/adsdk/sdk/AdManager$5;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-virtual {v3}, Lcom/adsdk/sdk/customevents/CustomEvent;->getOptionalParameter()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adsdk/sdk/AdManager$5;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-virtual {v4}, Lcom/adsdk/sdk/customevents/CustomEvent;->getPixelUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;->loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$5;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$21(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 375
    const-string v0, "Failed to create Custom Event Fullscreen."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
