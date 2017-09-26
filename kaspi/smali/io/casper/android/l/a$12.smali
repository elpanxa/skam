.class Lio/casper/android/l/a$12;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lio/casper/android/l/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/a;

.field final synthetic val$layout:Landroid/widget/LinearLayout;

.field final synthetic val$networkOrderBannerIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Ljava/util/Iterator;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lio/casper/android/l/a$12;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$12;->val$networkOrderBannerIterator:Ljava/util/Iterator;

    iput-object p3, p0, Lio/casper/android/l/a$12;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lio/casper/android/l/a$12;->val$networkOrderBannerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lio/casper/android/l/a$12;->this$0:Lio/casper/android/l/a;

    iget-object v2, p0, Lio/casper/android/l/a$12;->val$layout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/casper/android/l/a$12;->val$networkOrderBannerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lio/casper/android/l/a$12;->this$0:Lio/casper/android/l/a;

    invoke-static {v3}, Lio/casper/android/l/a;->a(Lio/casper/android/l/a;)Lio/casper/android/l/a$a;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Lio/casper/android/l/a$a;)V

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lio/casper/android/l/a$12;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 330
    iget-object v0, p0, Lio/casper/android/l/a$12;->this$0:Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/l/a$12;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lio/casper/android/l/a;->b(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method
