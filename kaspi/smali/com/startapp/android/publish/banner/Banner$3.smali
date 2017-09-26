.class Lcom/startapp/android/publish/banner/Banner$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/banner/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/banner/Banner;->setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/banner/Banner;

.field final synthetic val$listener:Lcom/startapp/android/publish/banner/BannerListener;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/banner/Banner;Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/startapp/android/publish/banner/Banner$3;->this$0:Lcom/startapp/android/publish/banner/Banner;

    iput-object p2, p0, Lcom/startapp/android/publish/banner/Banner$3;->val$listener:Lcom/startapp/android/publish/banner/BannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner$3;->val$listener:Lcom/startapp/android/publish/banner/BannerListener;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner$3;->this$0:Lcom/startapp/android/publish/banner/Banner;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/banner/BannerListener;->onClick(Landroid/view/View;)V

    .line 349
    return-void
.end method

.method public onFailedToReceiveAd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner$3;->val$listener:Lcom/startapp/android/publish/banner/BannerListener;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner$3;->this$0:Lcom/startapp/android/publish/banner/Banner;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/banner/BannerListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 344
    return-void
.end method

.method public onReceiveAd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner$3;->val$listener:Lcom/startapp/android/publish/banner/BannerListener;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/Banner$3;->this$0:Lcom/startapp/android/publish/banner/Banner;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/banner/BannerListener;->onReceiveAd(Landroid/view/View;)V

    .line 339
    return-void
.end method
