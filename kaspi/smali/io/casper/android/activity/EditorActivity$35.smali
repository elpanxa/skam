.class Lio/casper/android/activity/EditorActivity$35;
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
    .line 1260
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$35;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1264
    new-instance v1, Lio/casper/android/h/d;

    invoke-direct {v1}, Lio/casper/android/h/d;-><init>()V

    .line 1265
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$35;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$35;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v2}, Lio/casper/android/l/s;->i()I

    move-result v2

    new-instance v3, Lio/casper/android/activity/EditorActivity$35$1;

    invoke-direct {v3, p0}, Lio/casper/android/activity/EditorActivity$35$1;-><init>(Lio/casper/android/activity/EditorActivity$35;)V

    invoke-virtual {v1, v0, v2, v3}, Lio/casper/android/h/d;->a(Landroid/app/Activity;ILio/casper/android/h/d$a;)V

    .line 1273
    return-void
.end method
