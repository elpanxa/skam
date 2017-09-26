.class Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
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
    .line 248
    iput-object p1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$4;->this$0:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$4;->this$0:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    # invokes: Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->initBanner()V
    invoke-static {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->access$200(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V

    .line 252
    return-void
.end method
