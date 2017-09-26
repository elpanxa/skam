.class Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->adCredited(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$credits:I

.field final synthetic val$mMd5Signature:Z

.field final synthetic val$mTotalCreditsFlag:Z

.field final synthetic val$mlatestCompeltionsTime:Ljava/lang/String;

.field final synthetic val$product:Ljava/lang/String;

.field final synthetic val$totalCredits:I

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$product:Ljava/lang/String;

    iput p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$credits:I

    iput-boolean p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$mMd5Signature:Z

    iput p5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$totalCredits:I

    iput-boolean p6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$mTotalCreditsFlag:Z

    iput-object p7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$mlatestCompeltionsTime:Ljava/lang/String;

    iput-object p8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$appKey:Ljava/lang/String;

    iput-object p9, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$userId:Ljava/lang/String;

    iput-object p10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1209
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$product:Ljava/lang/String;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v0

    iget v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$credits:I

    invoke-interface {v0, v1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVAdCredited(I)V

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$product:Ljava/lang/String;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$mMd5Signature:Z

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$credits:I

    iget v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$totalCredits:I

    iget-boolean v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$mTotalCreditsFlag:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onOWAdCredited(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$mlatestCompeltionsTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$mlatestCompeltionsTime:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setLatestCompeltionsTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1223
    if-eqz v0, :cond_2

    .line 1224
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$value:Ljava/lang/String;

    const/4 v2, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v4, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1226
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;->val$value:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Time Stamp could not be stored"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
