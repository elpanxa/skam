.class Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;
.super Ljava/lang/Object;
.source "AvocarrotInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/AvocarrotInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InterstitialClickListener"
.end annotation


# instance fields
.field model:Lcom/avocarrot/androidsdk/BaseModel;

.field final synthetic this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/AvocarrotInterstitial;Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;->view:Landroid/view/View;

    .line 222
    iput-object p3, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;->model:Lcom/avocarrot/androidsdk/BaseModel;

    .line 223
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;->model:Lcom/avocarrot/androidsdk/BaseModel;

    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->handleClickOnAdView(Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;)Z

    move-result v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->closeAd()V

    .line 230
    :cond_0
    return-void
.end method
