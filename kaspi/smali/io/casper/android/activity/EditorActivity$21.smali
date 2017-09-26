.class Lio/casper/android/activity/EditorActivity$21;
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
    .line 1122
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$21;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$21;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->s(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/ui/d;->a()V

    .line 1126
    return-void
.end method
