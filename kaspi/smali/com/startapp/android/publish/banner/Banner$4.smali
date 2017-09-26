.class Lcom/startapp/android/publish/banner/Banner$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/banner/Banner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
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
    .line 379
    iput-object p1, p0, Lcom/startapp/android/publish/banner/Banner$4;->this$0:Lcom/startapp/android/publish/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner$4;->this$0:Lcom/startapp/android/publish/banner/Banner;

    # invokes: Lcom/startapp/android/publish/banner/Banner;->initBanner()V
    invoke-static {v0}, Lcom/startapp/android/publish/banner/Banner;->access$000(Lcom/startapp/android/publish/banner/Banner;)V

    .line 383
    return-void
.end method
