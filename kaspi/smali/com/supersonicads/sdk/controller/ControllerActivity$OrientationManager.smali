.class Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;
.super Landroid/view/OrientationEventListener;
.source "ControllerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/ControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationManager"
.end annotation


# instance fields
.field public currentOrientation:I

.field public defaultOrientation:I

.field final synthetic this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;


# direct methods
.method public constructor <init>(Lcom/supersonicads/sdk/controller/ControllerActivity;Landroid/content/Context;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 441
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    .line 442
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 437
    iput v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->defaultOrientation:I

    .line 438
    iput v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->currentOrientation:I

    .line 443
    invoke-static {p2}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceDefaultOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->defaultOrientation:I

    .line 444
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->currentOrientation:I

    .line 445
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x9

    const/4 v1, 0x2

    .line 450
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # getter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$000(Lcom/supersonicads/sdk/controller/ControllerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const/16 v0, 0x2d

    if-le p1, v0, :cond_2

    const/16 v0, 0x13b

    if-le p1, v0, :cond_6

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    iget v0, v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationType:I

    packed-switch v0, :pswitch_data_0

    .line 494
    :goto_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # getter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$000(Lcom/supersonicads/sdk/controller/ControllerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 459
    :pswitch_0
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->defaultOrientation:I

    if-ne v0, v1, :cond_3

    .line 460
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_1

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_1

    .line 470
    :pswitch_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_1

    .line 476
    :pswitch_2
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->defaultOrientation:I

    if-ne v0, v1, :cond_5

    .line 477
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->currentOrientation:I

    if-ne v0, v1, :cond_4

    .line 478
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_1

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_1

    .line 485
    :cond_5
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_1

    .line 496
    :cond_6
    const/16 v0, 0x2d

    if-le p1, v0, :cond_8

    const/16 v0, 0x87

    if-gt p1, v0, :cond_8

    .line 498
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    iget v0, v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationType:I

    packed-switch v0, :pswitch_data_1

    .line 528
    :goto_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # getter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$000(Lcom/supersonicads/sdk/controller/ControllerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 502
    :pswitch_3
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_2

    .line 509
    :pswitch_4
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v5}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_2

    .line 515
    :pswitch_5
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->defaultOrientation:I

    if-ne v0, v1, :cond_7

    .line 516
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_2

    .line 519
    :cond_7
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v5}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_2

    .line 530
    :cond_8
    const/16 v0, 0x87

    if-le p1, v0, :cond_c

    const/16 v0, 0xe1

    if-gt p1, v0, :cond_c

    .line 532
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    iget v0, v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationType:I

    packed-switch v0, :pswitch_data_2

    .line 570
    :goto_3
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # getter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$000(Lcom/supersonicads/sdk/controller/ControllerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 536
    :pswitch_6
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->defaultOrientation:I

    if-ne v0, v1, :cond_9

    .line 537
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_3

    .line 540
    :cond_9
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_3

    .line 547
    :pswitch_7
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v5}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_3

    .line 552
    :pswitch_8
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->defaultOrientation:I

    if-ne v0, v1, :cond_b

    .line 553
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->currentOrientation:I

    if-ne v0, v1, :cond_a

    .line 554
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v5}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_3

    .line 557
    :cond_a
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v5}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_3

    .line 561
    :cond_b
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_3

    .line 572
    :cond_c
    const/16 v0, 0xe1

    if-le p1, v0, :cond_0

    const/16 v0, 0x13b

    if-gt p1, v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    iget v0, v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationType:I

    packed-switch v0, :pswitch_data_3

    .line 609
    :goto_4
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # getter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$000(Lcom/supersonicads/sdk/controller/ControllerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 578
    :pswitch_9
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_4

    .line 585
    :pswitch_a
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_4

    .line 591
    :pswitch_b
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->defaultOrientation:I

    if-ne v0, v1, :cond_e

    .line 592
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->currentOrientation:I

    if-ne v0, v1, :cond_d

    .line 593
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_4

    .line 596
    :cond_d
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_4

    .line 600
    :cond_e
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    # setter for: Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I
    invoke-static {v0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I

    goto :goto_4

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 498
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 532
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 574
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
