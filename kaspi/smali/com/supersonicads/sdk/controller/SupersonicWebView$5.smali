.class Lcom/supersonicads/sdk/controller/SupersonicWebView$5;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3314
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v0

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3317
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3319
    :cond_0
    return-void
.end method
