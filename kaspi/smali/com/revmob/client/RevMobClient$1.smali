.class Lcom/revmob/client/RevMobClient$1;
.super Ljava/lang/Thread;
.source "RevMobClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/client/RevMobClient;->serverRequest(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/client/RevMobClient;

.field final synthetic val$listener:Lcom/revmob/client/RevMobClientListener;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/revmob/client/RevMobClient;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/revmob/client/RevMobClient$1;->this$0:Lcom/revmob/client/RevMobClient;

    iput-object p2, p0, Lcom/revmob/client/RevMobClient$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/revmob/client/RevMobClient$1;->val$payload:Ljava/lang/String;

    iput-object p4, p0, Lcom/revmob/client/RevMobClient$1;->val$listener:Lcom/revmob/client/RevMobClientListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Lcom/revmob/internal/HTTPHelper;

    invoke-direct {v0}, Lcom/revmob/internal/HTTPHelper;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/revmob/client/RevMobClient$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/client/RevMobClient$1;->val$payload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/HTTPHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/revmob/client/RevMobClient$1;->this$0:Lcom/revmob/client/RevMobClient;

    iget-object v2, p0, Lcom/revmob/client/RevMobClient$1;->val$listener:Lcom/revmob/client/RevMobClientListener;

    invoke-virtual {v1, v0, v2}, Lcom/revmob/client/RevMobClient;->processResponse(Lorg/apache/http/HttpResponse;Lcom/revmob/client/RevMobClientListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
