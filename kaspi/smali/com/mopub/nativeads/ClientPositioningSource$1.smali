.class Lcom/mopub/nativeads/ClientPositioningSource$1;
.super Ljava/lang/Object;
.source "ClientPositioningSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/ClientPositioningSource;->loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/ClientPositioningSource;

.field final synthetic val$listener:Lcom/mopub/nativeads/PositioningSource$PositioningListener;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/ClientPositioningSource;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mopub/nativeads/ClientPositioningSource$1;->this$0:Lcom/mopub/nativeads/ClientPositioningSource;

    iput-object p2, p0, Lcom/mopub/nativeads/ClientPositioningSource$1;->val$listener:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mopub/nativeads/ClientPositioningSource$1;->val$listener:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    iget-object v1, p0, Lcom/mopub/nativeads/ClientPositioningSource$1;->this$0:Lcom/mopub/nativeads/ClientPositioningSource;

    # getter for: Lcom/mopub/nativeads/ClientPositioningSource;->mPositioning:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    invoke-static {v1}, Lcom/mopub/nativeads/ClientPositioningSource;->access$000(Lcom/mopub/nativeads/ClientPositioningSource;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/PositioningSource$PositioningListener;->onLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 26
    return-void
.end method
