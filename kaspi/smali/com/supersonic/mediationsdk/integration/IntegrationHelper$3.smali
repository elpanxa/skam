.class final Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;
.super Ljava/util/ArrayList;
.source "IntegrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/supersonic/mediationsdk/integration/AdapterObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$adColonyAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

.field final synthetic val$appLovinAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

.field final synthetic val$chartboostAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

.field final synthetic val$flurryAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

.field final synthetic val$hyprMXAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

.field final synthetic val$inMobiAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

.field final synthetic val$nativeXAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

.field final synthetic val$supersonicAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

.field final synthetic val$unityAdsAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

.field final synthetic val$vungleAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$supersonicAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    iput-object p2, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$adColonyAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    iput-object p3, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$appLovinAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    iput-object p4, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$chartboostAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    iput-object p5, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$flurryAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    iput-object p6, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$hyprMXAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    iput-object p7, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$nativeXAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    iput-object p8, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$unityAdsAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    iput-object p9, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$vungleAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    iput-object p10, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$inMobiAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$supersonicAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$adColonyAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$appLovinAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$chartboostAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$flurryAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$hyprMXAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$nativeXAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$unityAdsAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$vungleAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->val$inMobiAdapter:Lcom/supersonic/mediationsdk/integration/AdapterObject;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method
