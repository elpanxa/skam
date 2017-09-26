.class Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$1;
.super Ljava/lang/Object;
.source "BaseInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->createInterstitialCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$1;->this$0:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$1;->this$0:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->finish()V

    .line 144
    return-void
.end method
