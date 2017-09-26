.class Lio/casper/android/activity/SnapchatLoginActivity$8$1;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

.field final synthetic val$credentials:Lio/casper/android/n/b$b;

.field final synthetic val$sessionCode:Lio/casper/android/n/b$a;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity$8;Lio/casper/android/n/b$a;Lio/casper/android/n/b$b;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iput-object p2, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->val$sessionCode:Lio/casper/android/n/b$a;

    iput-object p3, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->val$credentials:Lio/casper/android/n/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 692
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$8;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 694
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->val$sessionCode:Lio/casper/android/n/b$a;

    sget-object v1, Lio/casper/android/n/b$a;->AVAILABLE:Lio/casper/android/n/b$a;

    if-ne v0, v1, :cond_1

    .line 696
    new-instance v0, Lio/casper/android/b/a/k;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v1, "Root Access"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/k;->a(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/k;->b(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 698
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->o(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/r;->u()V

    .line 699
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07009c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 701
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->h(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/e/c/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->val$credentials:Lio/casper/android/n/b$b;

    invoke-virtual {v1}, Lio/casper/android/n/b$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/e/c/a;->a(Ljava/lang/String;)Lio/casper/android/e/b/b;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_0

    .line 703
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->h(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/e/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/casper/android/e/c/a;->d(Lio/casper/android/e/a/d;)V

    .line 706
    :cond_0
    new-instance v0, Lio/casper/android/e/b/b;

    invoke-direct {v0}, Lio/casper/android/e/b/b;-><init>()V

    .line 707
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->val$credentials:Lio/casper/android/n/b$b;

    invoke-virtual {v1}, Lio/casper/android/n/b$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/e/b/b;->a(Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->val$credentials:Lio/casper/android/n/b$b;

    invoke-virtual {v1}, Lio/casper/android/n/b$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/e/b/b;->d(Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->h(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/e/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/casper/android/e/c/a;->b(Lio/casper/android/e/a/d;)J

    move-result-wide v0

    .line 712
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v2, v2, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v2, v2, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v2, v0, v1}, Lio/casper/android/l/s;->a(J)V

    .line 713
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 733
    :goto_0
    return-void

    .line 717
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 718
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 720
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->val$credentials:Lio/casper/android/n/b$b;

    invoke-virtual {v1}, Lio/casper/android/n/b$b;->a()Lio/casper/android/n/b$a;

    move-result-object v1

    sget-object v2, Lio/casper/android/n/b$a;->NOT_AVAILABLE:Lio/casper/android/n/b$a;

    if-ne v1, v2, :cond_3

    .line 721
    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 722
    new-instance v1, Lio/casper/android/b/a/k;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v2, v2, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/casper/android/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v2, "Root Access"

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/k;->a(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v1

    const-string v2, "Root: No Snapchat Session"

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/k;->b(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v1

    invoke-static {v1}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 728
    :cond_2
    :goto_1
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 729
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_0

    .line 723
    :cond_3
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->val$credentials:Lio/casper/android/n/b$b;

    invoke-virtual {v1}, Lio/casper/android/n/b$b;->a()Lio/casper/android/n/b$a;

    move-result-object v1

    sget-object v2, Lio/casper/android/n/b$a;->NO_ACCESS:Lio/casper/android/n/b$a;

    if-ne v1, v2, :cond_2

    .line 724
    const v1, 0x7f0700f5

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 725
    new-instance v1, Lio/casper/android/b/a/k;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$8$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$8;

    iget-object v2, v2, Lio/casper/android/activity/SnapchatLoginActivity$8;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/casper/android/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v2, "Root Access"

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/k;->a(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v1

    const-string v2, "No Root Access"

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/k;->b(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v1

    invoke-static {v1}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto :goto_1
.end method
