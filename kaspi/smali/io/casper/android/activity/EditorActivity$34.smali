.class Lio/casper/android/activity/EditorActivity$34;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 627
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$34;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 631
    if-ne p2, v0, :cond_1

    const/16 v1, -0xc

    if-eq p3, v1, :cond_0

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_1

    .line 633
    :cond_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$34;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    const v2, 0x7f0701a1

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 635
    const v2, 0x7f070102

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 636
    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 637
    const v2, 0x7f070036

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 638
    new-instance v2, Lio/casper/android/activity/EditorActivity$34$1;

    invoke-direct {v2, p0}, Lio/casper/android/activity/EditorActivity$34$1;-><init>(Lio/casper/android/activity/EditorActivity$34;)V

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 645
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 650
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
