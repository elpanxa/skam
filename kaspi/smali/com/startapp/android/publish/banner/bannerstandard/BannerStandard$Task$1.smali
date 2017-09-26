.class Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task$1;->this$1:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task$1;->this$1:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    iget-object v0, v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;->this$0:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "BannerHtml"

    const/4 v1, 0x3

    const-string v2, "BannerHtmlREFRESH"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task$1;->this$1:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    iget-object v0, v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;->this$0:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    # invokes: Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->reload()V
    invoke-static {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->access$000(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V

    .line 93
    :cond_0
    return-void
.end method
