.class Lcom/adsdk/sdk/AdManager$8;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/AdManager;->notifyAdLoaded(Lcom/adsdk/sdk/AdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;

.field private final synthetic val$ad:Lcom/adsdk/sdk/AdResponse;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$8;->this$0:Lcom/adsdk/sdk/AdManager;

    iput-object p2, p0, Lcom/adsdk/sdk/AdManager$8;->val$ad:Lcom/adsdk/sdk/AdResponse;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$8;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$25(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$8;->val$ad:Lcom/adsdk/sdk/AdResponse;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/AdListener;->adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V

    .line 475
    return-void
.end method
