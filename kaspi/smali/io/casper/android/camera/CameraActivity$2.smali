.class Lio/casper/android/camera/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lio/casper/android/camera/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lio/casper/android/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lio/casper/android/camera/CameraActivity$2;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lio/casper/android/camera/CameraActivity$2;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lio/casper/android/camera/CameraActivity;->a(Z)V

    .line 138
    iget-object v1, p0, Lio/casper/android/camera/CameraActivity$2;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v1}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/camera/a;->j()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_1
    return-void

    .line 138
    :sswitch_0
    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 141
    :pswitch_0
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$2;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->f(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 146
    :pswitch_1
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$2;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->f(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 151
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$2;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->f(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 156
    :pswitch_3
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$2;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->f(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 138
    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_1
        0x1ad6f -> :sswitch_0
        0x2dddaf -> :sswitch_2
        0x696d3fc -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
