.class public Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field volatile udiaResults:I


# direct methods
.method public constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 667
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    .line 669
    return-void
.end method

.method private injectGetUDIA(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 2051
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onGetUDIASuccess"

    const-string v3, "onGetUDIAFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2053
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 2055
    :cond_0
    return-void
.end method

.method private sendResults(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    if-gtz v0, :cond_0

    .line 1969
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->injectGetUDIA(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1971
    :cond_0
    return-void
.end method


# virtual methods
.method public adClicked(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adClicked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1567
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1568
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1570
    check-cast v0, Landroid/app/Activity;

    .line 1571
    new-instance v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$9;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$9;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onInterstitialAdClicked"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    :cond_1
    return-void
.end method

.method public adCredited(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 1132
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adCredited("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1135
    const-string v2, "credits"

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1136
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1138
    :goto_0
    const-string v2, "total"

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1139
    if-eqz v4, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1141
    :goto_1
    const-string v2, "productType"

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1142
    const-string v6, "externalPoll"

    invoke-virtual {v1, v6}, Lcom/supersonicads/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1153
    if-eqz v6, :cond_4

    .line 1155
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;
    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v8

    .line 1156
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v9

    .line 1164
    :goto_2
    sget-object v6, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v6}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1167
    const-string v6, "signature"

    invoke-virtual {v1, v6}, Lcom/supersonicads/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "timestamp"

    invoke-virtual {v1, v6}, Lcom/supersonicads/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "totalCreditsFlag"

    invoke-virtual {v1, v6}, Lcom/supersonicads/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1169
    :cond_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v2, "One of the keys are missing: signature/timestamp/totalCreditsFlag"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v0, v2, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v3, v0

    .line 1136
    goto :goto_0

    :cond_3
    move v5, v0

    .line 1139
    goto :goto_1

    .line 1160
    :cond_4
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;
    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v8

    .line 1161
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1174
    :cond_5
    const-string v6, "signature"

    invoke-virtual {v1, v6}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1177
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1179
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/supersonicads/sdk/utils/SDKUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1181
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1183
    const/4 v0, 0x1

    .line 1189
    :goto_4
    const-string v4, "totalCreditsFlag"

    invoke-virtual {v1, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1192
    const-string v4, "timestamp"

    invoke-virtual {v1, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v4, v0

    .line 1195
    :goto_5
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1198
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v11, v0

    .line 1204
    check-cast v11, Landroid/app/Activity;

    .line 1205
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;

    move-object v1, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1185
    :cond_6
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v6, "Controller signature is not equal to SDK signature"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, p1, v0, v6, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move v4, v0

    move v6, v0

    goto :goto_5
.end method

.method public adUnitsReady(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 910
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitsReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    new-instance v1, Lcom/supersonicads/sdk/data/AdUnitsReady;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/AdUnitsReady;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/AdUnitsReady;->isNumOfAdUnitsExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    const-string v2, "Num Of Ad Units Do Not Exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v2, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getProductType()Ljava/lang/String;

    move-result-object v2

    .line 923
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 926
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 928
    check-cast v0, Landroid/app/Activity;

    .line 929
    new-instance v3, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Lcom/supersonicads/sdk/data/AdUnitsReady;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public alert(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 744
    return-void
.end method

.method protected declared-synchronized changeInterstitialState(ZLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1538
    monitor-enter p0

    .line 1541
    :try_start_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1542
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1554
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialAvailability(Z)V

    .line 1556
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onInterstitialAvailability"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    :cond_0
    monitor-exit p0

    return-void

    .line 1546
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1547
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1549
    :cond_2
    if-nez p1, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1551
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public checkInstalledApps(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInstalledApps("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 818
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3800(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 820
    const/4 v3, 0x0

    .line 823
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 824
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->APP_IDS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    sget-object v5, Lcom/supersonicads/sdk/controller/SupersonicWebView;->REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    invoke-static {v5, v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4300(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 831
    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    .line 832
    const/4 v5, 0x1

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 834
    if-eqz v1, :cond_1

    .line 835
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v2

    .line 844
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "onCheckInstalledAppsSuccess"

    const-string v4, "onCheckInstalledAppsFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v0, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 848
    :cond_0
    return-void

    .line 839
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v4

    .line 840
    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCalendarEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1699
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1701
    const-string v2, "frequency"

    const-string v3, "weekly"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1702
    const-string v2, "id"

    const-string v3, "testevent723GDf84"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1703
    const-string v2, "description"

    const-string v3, "Watch this crazy show on cannel 5!"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1704
    const-string v2, "start"

    const-string v3, "2014-02-01T20:00:00-8:00"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1705
    const-string v2, "end"

    const-string v3, "2014-06-30T20:00:00-8:00"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1706
    const-string v2, "status"

    const-string v3, "pending"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1707
    const-string v2, "recurrence"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1708
    const-string v1, "reminder"

    const-string v2, "2014-02-01T19:50:00-8:00"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    :goto_0
    return-void

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 985
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    new-instance v0, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 990
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    const-string v2, "File not exist"

    const-string v3, "1"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 996
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 994
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v0, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteFolder(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 971
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFolder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    new-instance v0, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 975
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 976
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    const-string v2, "Folder not exist"

    const-string v3, "1"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 981
    :goto_0
    return-void

    .line 978
    :cond_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 979
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v0, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public displayWebView(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1000
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayWebView("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v4, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1004
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1005
    const-string v0, "display"

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1006
    const-string v3, "productType"

    invoke-virtual {v1, v3}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1008
    const/4 v1, 0x0

    .line 1010
    if-eqz v0, :cond_4

    .line 1013
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getState()Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    move-result-object v0

    sget-object v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Display:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    if-eq v0, v4, :cond_3

    .line 1015
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Display:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    invoke-virtual {v0, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V

    .line 1017
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v4

    .line 1021
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getOrientationState()Ljava/lang/String;

    move-result-object v5

    .line 1022
    invoke-static {v4}, Lcom/supersonicads/sdk/utils/SDKUtils;->getApplicationRotation(Landroid/content/Context;)I

    move-result v6

    .line 1026
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/supersonicads/sdk/controller/InterstitialActivity;

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1053
    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVAdOpened()V

    .line 1058
    :cond_0
    const-string v1, "orientation_set_flag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    const-string v1, "rotation_set_flag"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1060
    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1070
    :goto_1
    return-void

    .line 1032
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/supersonicads/sdk/controller/ControllerActivity;

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1035
    sget-object v7, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1038
    const-string v1, "productType"

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v1

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    move v1, v2

    goto :goto_0

    .line 1045
    :cond_2
    const-string v2, "productType"

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v2

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    goto :goto_0

    .line 1063
    :cond_3
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1067
    :cond_4
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Gone:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V

    .line 1068
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->closeWebView()V
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    goto :goto_1
.end method

.method public getApplicationInfo(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 782
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3800(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 785
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 786
    const-string v1, "productType"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    const/4 v3, 0x0

    .line 790
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 792
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getApplicationParams(Ljava/lang/String;)[Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4200(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 794
    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    .line 795
    const/4 v5, 0x1

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 797
    if-eqz v1, :cond_1

    .line 798
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v2

    .line 807
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 808
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "onGetApplicationInfoSuccess"

    const-string v4, "onGetApplicationInfoFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v0, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 811
    :cond_0
    return-void

    .line 802
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v4

    .line 803
    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method public getCachedFilesMap(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1100
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedFilesMap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1109
    const-string v2, "path"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "path key does not exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    const-string v2, "path"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1117
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1118
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "path file does not exist on disk"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1122
    :cond_2
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "onGetCachedFilesMapSuccess"

    const-string v4, "onGetCachedFilesMapFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v0, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceStatus(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 748
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 751
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3800(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 754
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3900(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v1

    .line 756
    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    .line 757
    const/4 v4, 0x1

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 759
    const/4 v1, 0x0

    .line 761
    if-eqz v4, :cond_2

    .line 762
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 771
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 772
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "onGetDeviceStatusSuccess"

    const-string v4, "onGetDeviceStatusFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v0, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 775
    :cond_1
    return-void

    .line 766
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v3

    .line 767
    goto :goto_0
.end method

.method public getOrientation(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->getOrientation(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1077
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "onGetOrientationSuccess"

    const-string v4, "onGetOrientationFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v1, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 1081
    :cond_0
    return-void
.end method

.method public getUDIA(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1830
    iput v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    .line 1832
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUDIA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1836
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1839
    const-string v2, "getByFlag"

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "getByFlag key does not exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1963
    :cond_0
    :goto_0
    return-void

    .line 1845
    :cond_1
    const-string v2, "getByFlag"

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1846
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1849
    if-eqz v1, :cond_0

    .line 1854
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    .line 1856
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1857
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "fialed to convert getByFlag"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1862
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1863
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1866
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1869
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1872
    const/4 v3, 0x3

    aget-char v3, v1, v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_3

    .line 1873
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1875
    :try_start_0
    const-string v4, "sessions"

    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSessions()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1876
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->deleteSessions()V

    .line 1877
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1907
    :cond_3
    :goto_1
    const/4 v3, 0x2

    aget-char v1, v1, v3

    const/16 v3, 0x31

    if-ne v1, v3, :cond_0

    .line 1909
    iget v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    .line 1912
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/LocationHelper;->getLastLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 1914
    if-eqz v1, :cond_4

    .line 1915
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1917
    :try_start_1
    const-string v4, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1918
    const-string v4, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1919
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1920
    iget v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    .line 1921
    invoke-direct {p0, v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->sendResults(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1922
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "done location"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1923
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1927
    :cond_4
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    goto/16 :goto_0

    .line 1878
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getUserData(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 2106
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2110
    const-string v1, "key"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "key does not exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v10, v1, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2124
    :goto_0
    return-void

    .line 2115
    :cond_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2116
    const-string v1, "key"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2118
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2120
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2122
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v11, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2123
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserUniqueId(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 2018
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserUniqueId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2022
    const-string v1, "productType"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2023
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "productType does not exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v10, v1, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2029
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2031
    const-string v1, "productType"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2032
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2033
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "userUniqueId"

    const-string v3, "productType"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2035
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v2, "onGetUserUniqueIdSuccess"

    const-string v3, "onGetUserUniqueIdFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v11, v0, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2036
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initController(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initController("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 677
    const-string v1, "stage"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 679
    const-string v1, "stage"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    const-string v1, "ready"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 683
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 686
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 689
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 692
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;
    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;
    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;
    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 708
    :cond_3
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->restoreState(Lcom/supersonicads/sdk/data/AdUnitsState;)V

    .line 739
    :cond_4
    :goto_0
    return-void

    .line 710
    :cond_5
    const-string v1, "loaded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 712
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Loaded:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    goto :goto_0

    .line 714
    :cond_6
    const-string v1, "failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 716
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 718
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 719
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 722
    :cond_7
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 723
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 726
    :cond_8
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 727
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 730
    :cond_9
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 731
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    goto :goto_0

    .line 736
    :cond_a
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No STAGE mentioned! Should not get here!"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public interstitialAvailability(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interstitialAvailability("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1533
    const-string v1, "available"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1534
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->changeInterstitialState(ZLjava/lang/String;)V

    .line 1535
    return-void
.end method

.method public onAdWindowsClosed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdWindowsClosed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/AdUnitsState;->adClosed()V

    .line 2162
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2163
    const-string v1, "productType"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2165
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2166
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onRVAdClosed()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2175
    if-eqz v1, :cond_1

    .line 2176
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 2177
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 2179
    check-cast v0, Landroid/app/Activity;

    .line 2180
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;

    invoke-direct {v2, p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2195
    :cond_1
    return-void

    .line 2167
    :cond_2
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2168
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onISAdClosed()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2169
    :cond_3
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onOWAdClosed()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onGenericFunctionFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1663
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericFunctionFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "genericFunctionListener was not found"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    :goto_0
    return-void

    .line 1670
    :cond_0
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1671
    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1673
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1674
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 1676
    check-cast v0, Landroid/app/Activity;

    .line 1677
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$13;

    invoke-direct {v2, p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$13;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1684
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1685
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGenericFunctionFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGenericFunctionSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1641
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericFunctionSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "genericFunctionListener was not found"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    :goto_0
    return-void

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1649
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1650
    check-cast v0, Landroid/app/Activity;

    .line 1651
    new-instance v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$12;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$12;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1658
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetApplicationInfoFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1331
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetApplicationInfoFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    return-void
.end method

.method public onGetApplicationInfoSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1323
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetApplicationInfoSuccess"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    return-void
.end method

.method public onGetCachedFilesMapFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1388
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetCachedFilesMapFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    return-void
.end method

.method public onGetCachedFilesMapSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1379
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetCachedFilesMapSuccess"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    return-void
.end method

.method public onGetDeviceStatusFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1261
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetDeviceStatusFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    return-void
.end method

.method public onGetDeviceStatusSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1252
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetDeviceStatusSuccess"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    return-void
.end method

.method public onGetUDIAFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUDIAFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    return-void
.end method

.method public onGetUDIASuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUDIASuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    return-void
.end method

.method public onGetUserCreditsFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2128
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserCreditsFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2131
    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2133
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 2135
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2137
    check-cast v0, Landroid/app/Activity;

    .line 2138
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$14;

    invoke-direct {v2, p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$14;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2150
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2151
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetUserCreditsFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    return-void
.end method

.method public onGetUserUniqueIdFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    return-void
.end method

.method public onGetUserUniqueIdSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    return-void
.end method

.method public onInitBrandConnectFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1281
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitBrandConnectFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1284
    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRewardedVideoInitSuccess(Z)V

    .line 1295
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1298
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1300
    check-cast v0, Landroid/app/Activity;

    .line 1301
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$3;

    invoke-direct {v2, p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$3;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onInitBrandConnectFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    return-void
.end method

.method public onInitBrandConnectSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1270
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitBrandConnectSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    new-instance v0, Lcom/supersonicads/sdk/data/SSABCParameters;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSABCParameters;-><init>(Ljava/lang/String;)V

    .line 1273
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setSSABCParameters(Lcom/supersonicads/sdk/data/SSABCParameters;)V

    .line 1275
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onInitBrandConnectSuccess"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method public onInitInterstitialFail(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1489
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitInterstitialFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialInitSuccess(Z)V

    .line 1494
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1495
    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1498
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/AdUnitsState;->reportInitInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 1503
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1506
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1508
    check-cast v0, Landroid/app/Activity;

    .line 1509
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$8;

    invoke-direct {v2, p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$8;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v4, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1525
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onInitInterstitialFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    return-void
.end method

.method public onInitInterstitialSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitInterstitialSuccess()"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onInitInterstitialSuccess"

    const-string v2, "true"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialInitSuccess(Z)V

    .line 1461
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/AdUnitsState;->reportInitInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 1466
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1469
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1471
    check-cast v0, Landroid/app/Activity;

    .line 1472
    new-instance v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$7;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$7;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1485
    :cond_0
    return-void
.end method

.method public onOfferWallGeneric(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOfferWallGeneric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    :cond_0
    return-void
.end method

.method public onRewardedVideoGeneric(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardedVideoGeneric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVGeneric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    :cond_0
    return-void
.end method

.method public onShowBrandConnectFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1347
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowBrandConnectFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1350
    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1352
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1355
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1357
    check-cast v0, Landroid/app/Activity;

    .line 1358
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$4;

    invoke-direct {v2, p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$4;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onShowBrandConnectFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    return-void
.end method

.method public onShowBrandConnectSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1339
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowBrandConnectSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onShowBrandConnectSuccess"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public onShowInterstitialFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1608
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowInterstitialFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1611
    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1613
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v2, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1618
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1620
    check-cast v0, Landroid/app/Activity;

    .line 1621
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$11;

    invoke-direct {v2, p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$11;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onShowInterstitialFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    return-void
.end method

.method public onShowInterstitialSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1583
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowInterstitialSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1588
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1592
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1594
    check-cast v0, Landroid/app/Activity;

    .line 1595
    new-instance v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$10;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$10;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onShowInterstitialSuccess"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_1
    return-void
.end method

.method public onShowOfferWallFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1423
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowOfferWallFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1426
    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1430
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1432
    check-cast v0, Landroid/app/Activity;

    .line 1433
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$6;

    invoke-direct {v2, p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$6;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onShowOfferWallFail"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    return-void
.end method

.method public onShowOfferWallSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1400
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowOfferWallSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1404
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1406
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1408
    check-cast v0, Landroid/app/Activity;

    .line 1409
    new-instance v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$5;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$5;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onShowOfferWallSuccess"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    return-void
.end method

.method public onUDIAFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUDIAFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    return-void
.end method

.method public onUDIASuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUDIASuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    return-void
.end method

.method public onVideoStatusChanged(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStatusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2201
    const-string v1, "productType"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2203
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2204
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2205
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2206
    const-string v1, "started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2207
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoStarted()V

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    const-string v1, "paused"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2209
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoPaused()V

    goto :goto_0

    .line 2210
    :cond_2
    const-string v1, "playing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2211
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoResumed()V

    goto :goto_0

    .line 2212
    :cond_3
    const-string v1, "ended"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2213
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoEnded()V

    goto :goto_0

    .line 2214
    :cond_4
    const-string v1, "stopped"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2215
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoStopped()V

    goto :goto_0

    .line 2217
    :cond_5
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoStatusChanged: unknown status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1717
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openUrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1720
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1721
    const-string v2, "method"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1724
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v2

    .line 1726
    const-string v3, "external_browser"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1728
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1729
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1731
    :cond_1
    const-string v3, "webview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1733
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1734
    sget-object v3, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1735
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1736
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1738
    :cond_2
    const-string v3, "store"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1740
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1741
    sget-object v3, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1742
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_STORE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1743
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1744
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public removeCloseEventHandler(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCloseEventHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$702(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z

    .line 1248
    return-void
.end method

.method public saveFile(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 853
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    new-instance v1, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/supersonicads/sdk/utils/SDKUtils;->getAvailableSpaceInMB(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "no_disk_space"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v7, v1, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 906
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "sotrage_unavailable"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v7, v1, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isFileCached(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAFile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "file_already_exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v7, v1, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 874
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 876
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "no_network_connection"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v7, v1, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 880
    :cond_3
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v2, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v6, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAFile;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v0

    .line 884
    if-eqz v0, :cond_5

    .line 886
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 889
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 892
    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 894
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 895
    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 896
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 901
    :cond_4
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setCampaignLastUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_5
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/precache/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadFile(Lcom/supersonicads/sdk/data/SSAFile;)V

    goto :goto_0
.end method

.method public setBackButtonState(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackButtonState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1768
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1770
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setBackButtonState(Ljava/lang/String;)V

    .line 1771
    return-void
.end method

.method public setForceClose(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceClose("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1754
    const-string v1, "width"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1755
    const-string v2, "height"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1757
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I
    invoke-static {v3, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$402(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I

    .line 1758
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I
    invoke-static {v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$502(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I

    .line 1759
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v2, "position"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1761
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1088
    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setOrientationState(Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->getApplicationRotation(Landroid/content/Context;)I

    move-result v1

    .line 1093
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1094
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;
    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;->onSetOrientationCalled(Ljava/lang/String;I)V

    .line 1096
    :cond_0
    return-void
.end method

.method public setStoreSearchKeys(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStoreSearchKeys("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setSearchKeys(Ljava/lang/String;)V

    .line 1778
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 2073
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2077
    const-string v1, "key"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "key does not exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v10, v1, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2102
    :goto_0
    return-void

    .line 2082
    :cond_0
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2083
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "value does not exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v10, v1, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2087
    :cond_1
    const-string v1, "key"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2088
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2090
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setUserData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2092
    if-eqz v0, :cond_2

    .line 2094
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2095
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2096
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v11, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2097
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 2100
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "SetUserData failed writing to shared preferences"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v10, v1, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserUniqueId(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1995
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserUniqueId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1999
    const-string v1, "userUniqueId"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "productType"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "uniqueId or productType does not exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v4, v1, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2014
    :goto_0
    return-void

    .line 2004
    :cond_1
    const-string v1, "userUniqueId"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2005
    const-string v2, "productType"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2007
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setUniqueId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2009
    if-eqz v0, :cond_2

    .line 2010
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2012
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "setUserUniqueId failed"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v4, v1, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWebviewBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWebviewBackgroundColor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebviewBackground(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 1785
    return-void
.end method

.method public toggleUDIA(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1789
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleUDIA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1794
    const-string v1, "toggle"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1795
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "toggle key does not exist"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1825
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    const-string v1, "toggle"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1801
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1804
    if-eqz v0, :cond_0

    .line 1809
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 1811
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1812
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "fialed to convert toggle"

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1817
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1820
    const/4 v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    .line 1821
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setShouldRegisterSessions(Z)V

    goto :goto_0

    .line 1823
    :cond_3
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setShouldRegisterSessions(Z)V

    goto :goto_0
.end method
