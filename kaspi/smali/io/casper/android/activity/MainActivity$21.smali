.class Lio/casper/android/activity/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 853
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 854
    iget-object v1, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->k(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/r;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/l/r;->j()Z

    move-result v1

    .line 858
    packed-switch v0, :pswitch_data_0

    .line 918
    :goto_0
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->l(Lio/casper/android/activity/MainActivity;)Lcom/flipboard/bottomsheet/BottomSheetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->isSheetShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->l(Lio/casper/android/activity/MainActivity;)Lcom/flipboard/bottomsheet/BottomSheetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dismissSheet()V

    .line 922
    :cond_0
    return v5

    .line 862
    :pswitch_0
    if-eqz v1, :cond_1

    .line 863
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 867
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    iget-object v2, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 870
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 872
    iget-object v1, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lio/casper/android/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 910
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 911
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 912
    const v1, 0x7f0700d5

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 913
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 914
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_0

    .line 874
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    iget-object v1, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lio/casper/android/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 885
    :pswitch_1
    if-eqz v1, :cond_2

    .line 886
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 890
    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    iget-object v2, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 893
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 895
    iget-object v1, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lio/casper/android/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 897
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 898
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    iget-object v1, p0, Lio/casper/android/activity/MainActivity$21;->this$0:Lio/casper/android/activity/MainActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lio/casper/android/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0169
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
