.class Lio/casper/android/activity/EditorActivity$29;
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
    .line 1193
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$29;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1196
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$29;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$29;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->w(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/i/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/activity/EditorActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 1197
    return-void
.end method
