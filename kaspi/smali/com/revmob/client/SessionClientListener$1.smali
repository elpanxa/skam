.class Lcom/revmob/client/SessionClientListener$1;
.super Ljava/lang/Object;
.source "SessionClientListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/client/SessionClientListener;->handleResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/client/SessionClientListener;


# direct methods
.method constructor <init>(Lcom/revmob/client/SessionClientListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/revmob/client/SessionClientListener$1;->this$0:Lcom/revmob/client/SessionClientListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/revmob/client/SessionClientListener$1;->this$0:Lcom/revmob/client/SessionClientListener;

    new-instance v1, Lcom/revmob/internal/RevMobEula;

    iget-object v2, p0, Lcom/revmob/client/SessionClientListener$1;->this$0:Lcom/revmob/client/SessionClientListener;

    # getter for: Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/revmob/client/SessionClientListener;->access$100(Lcom/revmob/client/SessionClientListener;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/client/SessionClientListener$1;->this$0:Lcom/revmob/client/SessionClientListener;

    # getter for: Lcom/revmob/client/SessionClientListener;->revmobListener:Lcom/revmob/RevMobAdsListener;
    invoke-static {v3}, Lcom/revmob/client/SessionClientListener;->access$200(Lcom/revmob/client/SessionClientListener;)Lcom/revmob/RevMobAdsListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/revmob/internal/RevMobEula;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    # setter for: Lcom/revmob/client/SessionClientListener;->eula:Lcom/revmob/internal/RevMobEula;
    invoke-static {v0, v1}, Lcom/revmob/client/SessionClientListener;->access$002(Lcom/revmob/client/SessionClientListener;Lcom/revmob/internal/RevMobEula;)Lcom/revmob/internal/RevMobEula;

    .line 95
    iget-object v0, p0, Lcom/revmob/client/SessionClientListener$1;->this$0:Lcom/revmob/client/SessionClientListener;

    # getter for: Lcom/revmob/client/SessionClientListener;->eula:Lcom/revmob/internal/RevMobEula;
    invoke-static {v0}, Lcom/revmob/client/SessionClientListener;->access$000(Lcom/revmob/client/SessionClientListener;)Lcom/revmob/internal/RevMobEula;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/internal/RevMobEula;->loadAndShow()V

    .line 96
    return-void
.end method
