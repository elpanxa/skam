.class Lcom/adsdk/sdk/mraid/MraidDisplayController$2;
.super Lcom/adsdk/sdk/mraid/MraidView$BaseMraidListener;
.source "MraidDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidDisplayController;->expand(Ljava/lang/String;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    .line 328
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView$BaseMraidListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->close()V

    .line 331
    return-void
.end method
