.class Lio/casper/android/h/e$b$1;
.super Ljava/lang/Object;
.source "RedeemCreditsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/h/e$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/h/e$b;

.field final synthetic val$addon:Lio/casper/android/c/b/b/a/a/i/a;


# direct methods
.method constructor <init>(Lio/casper/android/h/e$b;Lio/casper/android/c/b/b/a/a/i/a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iput-object p2, p0, Lio/casper/android/h/e$b$1;->val$addon:Lio/casper/android/c/b/b/a/a/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 108
    iget-object v0, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v0, v0, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v0}, Lio/casper/android/h/e;->c(Lio/casper/android/h/e;)Lio/casper/android/l/b;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/h/e$b$1;->val$addon:Lio/casper/android/c/b/b/a/a/i/a;

    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/i/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/l/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v0, v0, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v0}, Lio/casper/android/h/e;->b(Lio/casper/android/h/e;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v1, v1, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v1}, Lio/casper/android/h/e;->b(Lio/casper/android/h/e;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07008e

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lio/casper/android/h/e$b$1;->val$addon:Lio/casper/android/c/b/b/a/a/i/a;

    invoke-virtual {v4}, Lio/casper/android/c/b/b/a/a/i/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v0, v0, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v0}, Lio/casper/android/h/e;->d(Lio/casper/android/h/e;)Lio/casper/android/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/w;->c()J

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lio/casper/android/h/e$b$1;->val$addon:Lio/casper/android/c/b/b/a/a/i/a;

    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/a/i/a;->b()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 116
    iget-object v2, p0, Lio/casper/android/h/e$b$1;->val$addon:Lio/casper/android/c/b/b/a/a/i/a;

    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/a/i/a;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 118
    iget-object v2, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v2, v2, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v2}, Lio/casper/android/h/e;->c(Lio/casper/android/h/e;)Lio/casper/android/l/b;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/h/e$b$1;->val$addon:Lio/casper/android/c/b/b/a/a/i/a;

    invoke-virtual {v3}, Lio/casper/android/c/b/b/a/a/i/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lio/casper/android/l/b;->a(Ljava/lang/String;Z)V

    .line 119
    iget-object v2, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v2, v2, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v2}, Lio/casper/android/h/e;->d(Lio/casper/android/h/e;)Lio/casper/android/l/w;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/casper/android/l/w;->a(J)V

    .line 121
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v1, v1, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v1}, Lio/casper/android/h/e;->b(Lio/casper/android/h/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 123
    iget-object v1, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v1, v1, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Lio/casper/android/h/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lio/casper/android/h/e$b$1;->val$addon:Lio/casper/android/c/b/b/a/a/i/a;

    invoke-virtual {v3}, Lio/casper/android/c/b/b/a/a/i/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 124
    const v1, 0x7f070044

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 125
    new-instance v1, Lio/casper/android/h/e$b$1$1;

    invoke-direct {v1, p0}, Lio/casper/android/h/e$b$1$1;-><init>(Lio/casper/android/h/e$b$1;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 131
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 133
    iget-object v0, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v0, v0, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-virtual {v0}, Lio/casper/android/h/e;->dismiss()V

    goto/16 :goto_0

    .line 137
    :cond_1
    iget-object v2, p0, Lio/casper/android/h/e$b$1;->val$addon:Lio/casper/android/c/b/b/a/a/i/a;

    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/a/i/a;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 138
    iget-object v2, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v2, v2, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v2}, Lio/casper/android/h/e;->b(Lio/casper/android/h/e;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v3, v3, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v3}, Lio/casper/android/h/e;->b(Lio/casper/android/h/e;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070090

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
