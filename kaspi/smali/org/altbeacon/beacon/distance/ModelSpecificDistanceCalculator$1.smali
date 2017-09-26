.class Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;
.super Ljava/lang/Object;
.source "ModelSpecificDistanceCalculator.java"

# interfaces
.implements Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->requestModelMapFromWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    if-eqz p2, :cond_1

    .line 221
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v1, "Cannot updated distance models from online database at %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    # getter for: Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;
    invoke-static {v3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$000(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const/16 v0, 0xc8

    if-eq p3, v0, :cond_2

    .line 225
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v1, "Cannot updated distance models from online database at %s due to HTTP status code %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    # getter for: Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;
    invoke-static {v3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$000(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_2
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v1, "Successfully downloaded distance models from online database"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    # invokes: Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMap(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$100(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    # invokes: Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->saveJson(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$200(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    # invokes: Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMapFromFile()Z
    invoke-static {v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$300(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Z

    .line 236
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    iget-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    # getter for: Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;
    invoke-static {v2}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$500(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Lorg/altbeacon/beacon/distance/AndroidModel;

    move-result-object v2

    # invokes: Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModel(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    invoke-static {v1, v2}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$600(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v1

    # setter for: Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$402(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Lorg/altbeacon/beacon/distance/DistanceCalculator;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 237
    const-string v0, "ModelSpecificDistanceCalculator"

    const-string v1, "Successfully updated distance model with latest from online database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v1, "ModelSpecificDistanceCalculator"

    const-string v2, "Cannot parse json from downloaded distance model"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
