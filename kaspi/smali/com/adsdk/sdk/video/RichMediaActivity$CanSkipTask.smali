.class Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;
.super Ljava/util/TimerTask;
.source "RichMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CanSkipTask"
.end annotation


# instance fields
.field private final mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;)Lcom/adsdk/sdk/video/RichMediaActivity;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "###########TRACKING CAN CLOSE INTERSTITIAL"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$13(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 78
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$14(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask$1;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    :cond_0
    return-void
.end method
