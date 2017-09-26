.class Lcom/adsdk/sdk/mraid/MraidView$1;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidView;->initialize(Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$1;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$1;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView;->mViewGestureDetector:Lcom/adsdk/sdk/mraid/ViewGestureDetector;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView;->access$5(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/ViewGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adsdk/sdk/mraid/ViewGestureDetector;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 149
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$1;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->access$6(Lcom/adsdk/sdk/mraid/MraidView;Z)V

    .line 151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 154
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
