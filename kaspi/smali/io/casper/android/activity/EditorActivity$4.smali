.class Lio/casper/android/activity/EditorActivity$4;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EditorActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$4;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 827
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$4;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$4;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->k(Lio/casper/android/activity/EditorActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lio/casper/android/activity/EditorActivity;->a(Lio/casper/android/activity/EditorActivity;Z)Z

    .line 828
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$4;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->l(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$4;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->k(Lio/casper/android/activity/EditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0200b9

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 829
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$4;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->m(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$4;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->k(Lio/casper/android/activity/EditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 831
    return-void

    .line 827
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 828
    :cond_1
    const v0, 0x7f0200cc

    goto :goto_1

    .line 829
    :cond_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_2
.end method
