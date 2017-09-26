.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExternalAuthDependency;
.super Ljava/lang/Object;
.source "ImojiApiImpl.java"

# interfaces
.implements Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalAuthDependency"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;


# direct methods
.method private constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExternalAuthDependency;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExternalAuthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;)V

    return-void
.end method


# virtual methods
.method public isDependencySatisfied(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Z
    .locals 2

    .prologue
    .line 557
    const-string v0, "external_grant_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public satisfyDependencies(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V
    .locals 0

    .prologue
    .line 562
    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->startExternalOauth()V
    invoke-static {p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$1200(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V

    .line 563
    return-void
.end method
