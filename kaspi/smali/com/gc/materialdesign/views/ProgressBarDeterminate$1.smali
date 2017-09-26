.class Lcom/gc/materialdesign/views/ProgressBarDeterminate$1;
.super Ljava/lang/Object;
.source "ProgressBarDeterminate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/views/ProgressBarDeterminate;->setAttributes(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/views/ProgressBarDeterminate;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/views/ProgressBarDeterminate;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarDeterminate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarDeterminate;

    iget-object v0, v0, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarDeterminate;

    invoke-virtual {v1}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 67
    iget-object v1, p0, Lcom/gc/materialdesign/views/ProgressBarDeterminate$1;->this$0:Lcom/gc/materialdesign/views/ProgressBarDeterminate;

    iget-object v1, v1, Lcom/gc/materialdesign/views/ProgressBarDeterminate;->progressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method
