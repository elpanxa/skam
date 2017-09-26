.class Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupersonicWebViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method private constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 217
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 220
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-int v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-int v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceWidth()I

    move-result v1

    .line 223
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceHeight()I

    move-result v3

    .line 225
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Width:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Height:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I
    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->dpToPx(J)I

    move-result v4

    .line 229
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I
    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I

    move-result v5

    int-to-long v8, v5

    invoke-static {v8, v9}, Lcom/supersonicads/sdk/utils/SDKUtils;->dpToPx(J)I

    move-result v5

    .line 233
    const-string v7, "top-right"

    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 235
    float-to-int v0, v0

    sub-int/2addr v1, v0

    .line 236
    float-to-int v0, v2

    .line 254
    :goto_0
    if-gt v1, v4, :cond_1

    if-gt v0, v5, :cond_1

    .line 257
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z
    invoke-static {v0, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$702(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z

    .line 262
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 266
    :cond_0
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;JJ)V

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {v7, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 287
    :cond_1
    return v6

    .line 238
    :cond_2
    const-string v7, "top-left"

    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 240
    float-to-int v1, v0

    .line 241
    float-to-int v0, v2

    goto :goto_0

    .line 243
    :cond_3
    const-string v7, "bottom-right"

    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 245
    float-to-int v0, v0

    sub-int/2addr v1, v0

    .line 246
    float-to-int v0, v2

    sub-int v0, v3, v0

    goto :goto_0

    .line 248
    :cond_4
    const-string v1, "bottom-left"

    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    float-to-int v1, v0

    .line 251
    float-to-int v0, v2

    sub-int v0, v3, v0

    goto :goto_0

    :cond_5
    move v0, v6

    move v1, v6

    goto :goto_0
.end method
