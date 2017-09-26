.class Lio/casper/android/activity/EditorActivity$35$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lio/casper/android/h/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$35;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/EditorActivity$35;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$35;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$35$1;->this$1:Lio/casper/android/activity/EditorActivity$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 1268
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$35$1;->this$1:Lio/casper/android/activity/EditorActivity$35;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$35;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0, p1}, Lio/casper/android/l/s;->a(I)V

    .line 1269
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$35$1;->this$1:Lio/casper/android/activity/EditorActivity$35;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$35;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->z(Lio/casper/android/activity/EditorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    return-void
.end method
