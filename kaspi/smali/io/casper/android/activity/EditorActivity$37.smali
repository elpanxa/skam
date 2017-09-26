.class Lio/casper/android/activity/EditorActivity$37;
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
    .line 1286
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$37;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1290
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$37;->this$0:Lio/casper/android/activity/EditorActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$37;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const-class v3, Lio/casper/android/activity/LocationPickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Lio/casper/android/activity/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1292
    return-void
.end method
