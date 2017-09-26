.class Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$3;->this$0:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$3;->this$0:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/startapp/android/publish/h/b;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 223
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$3;->this$0:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    # invokes: Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->initBanner()V
    invoke-static {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->access$200(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V

    .line 224
    return-void
.end method
