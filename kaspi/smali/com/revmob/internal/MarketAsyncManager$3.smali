.class Lcom/revmob/internal/MarketAsyncManager$3;
.super Ljava/lang/Thread;
.source "MarketAsyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/internal/MarketAsyncManager;->dspServerRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/internal/MarketAsyncManager;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/revmob/internal/MarketAsyncManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/revmob/internal/MarketAsyncManager$3;->this$0:Lcom/revmob/internal/MarketAsyncManager;

    iput-object p2, p0, Lcom/revmob/internal/MarketAsyncManager$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/revmob/internal/MarketAsyncManager$3;->val$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/revmob/internal/HTTPHelper;

    invoke-direct {v0}, Lcom/revmob/internal/HTTPHelper;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager$3;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/internal/MarketAsyncManager$3;->val$payload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/HTTPHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    .line 149
    return-void
.end method
