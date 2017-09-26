.class Lcom/startapp/android/publish/banner/Banner$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/e/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/banner/Banner;->initBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/banner/Banner;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/banner/Banner;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/startapp/android/publish/banner/Banner$2;->this$0:Lcom/startapp/android/publish/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoadingMeta()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner$2;->this$0:Lcom/startapp/android/publish/banner/Banner;

    # invokes: Lcom/startapp/android/publish/banner/Banner;->init_step2()V
    invoke-static {v0}, Lcom/startapp/android/publish/banner/Banner;->access$100(Lcom/startapp/android/publish/banner/Banner;)V

    .line 158
    return-void
.end method

.method public onFinishLoadingMeta()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner$2;->this$0:Lcom/startapp/android/publish/banner/Banner;

    # invokes: Lcom/startapp/android/publish/banner/Banner;->init_step2()V
    invoke-static {v0}, Lcom/startapp/android/publish/banner/Banner;->access$100(Lcom/startapp/android/publish/banner/Banner;)V

    .line 151
    return-void
.end method
