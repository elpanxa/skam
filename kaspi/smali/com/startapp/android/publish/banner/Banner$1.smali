.class Lcom/startapp/android/publish/banner/Banner$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/banner/Banner;->init(Lcom/startapp/android/publish/model/AdPreferences;)V
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
    .line 115
    iput-object p1, p0, Lcom/startapp/android/publish/banner/Banner$1;->this$0:Lcom/startapp/android/publish/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner$1;->this$0:Lcom/startapp/android/publish/banner/Banner;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/Banner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/startapp/android/publish/h/b;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 119
    iget-object v0, p0, Lcom/startapp/android/publish/banner/Banner$1;->this$0:Lcom/startapp/android/publish/banner/Banner;

    # invokes: Lcom/startapp/android/publish/banner/Banner;->initBanner()V
    invoke-static {v0}, Lcom/startapp/android/publish/banner/Banner;->access$000(Lcom/startapp/android/publish/banner/Banner;)V

    .line 120
    return-void
.end method
