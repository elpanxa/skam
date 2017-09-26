.class Lcom/adsdk/sdk/mraid/MraidDisplayController$4$1;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/mraid/MraidDisplayController$4;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4$1;->this$1:Lcom/adsdk/sdk/mraid/MraidDisplayController$4;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4$1;->this$1:Lcom/adsdk/sdk/mraid/MraidDisplayController$4;

    # getter for: Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->access$0(Lcom/adsdk/sdk/mraid/MraidDisplayController$4;)Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    const-string v1, "Image failed to download."

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->showUserToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$7(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4$1;->this$1:Lcom/adsdk/sdk/mraid/MraidDisplayController$4;

    # getter for: Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->access$0(Lcom/adsdk/sdk/mraid/MraidDisplayController$4;)Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->STORE_PICTURE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Error downloading and saving image file."

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 417
    const-string v0, "MoPub"

    const-string v1, "Error downloading and saving image file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method
