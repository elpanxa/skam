.class Lio/casper/android/a/b$7;
.super Ljava/lang/Object;
.source "ConversationSnapsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/b;->a(Lio/casper/android/a/b$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/b;

.field final synthetic val$holder:Lio/casper/android/a/b$a;

.field final synthetic val$time:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lio/casper/android/a/b;Lio/casper/android/a/b$a;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lio/casper/android/a/b$7;->this$0:Lio/casper/android/a/b;

    iput-object p2, p0, Lio/casper/android/a/b$7;->val$holder:Lio/casper/android/a/b$a;

    iput-object p3, p0, Lio/casper/android/a/b$7;->val$time:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 237
    iget-object v0, p0, Lio/casper/android/a/b$7;->val$holder:Lio/casper/android/a/b$a;

    invoke-static {v0}, Lio/casper/android/a/b$a;->d(Lio/casper/android/a/b$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/b$7;->this$0:Lio/casper/android/a/b;

    invoke-static {v1}, Lio/casper/android/a/b;->a(Lio/casper/android/a/b;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07010b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/casper/android/a/b$7;->val$time:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method
