.class Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;
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
    name = "OauthDependency"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;


# direct methods
.method private constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;->this$0:Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;Lcom/imojiapp/imoji/sdk/ImojiApiImpl$1;)V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$OauthDependency;-><init>(Lcom/imojiapp/imoji/sdk/ImojiApiImpl;)V

    return-void
.end method


# virtual methods
.method public isDependencySatisfied(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Z
    .locals 6

    .prologue
    .line 544
    invoke-virtual {p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->getOauthToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->getExpirationTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public satisfyDependencies(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 549
    const-string v0, "c"

    invoke-static {v0, v3}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s"

    invoke-static {v1, v3}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-static {v2, v3}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->acquireOauthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;->access$1100(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void
.end method
