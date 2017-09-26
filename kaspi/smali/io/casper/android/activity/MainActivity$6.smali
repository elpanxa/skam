.class Lio/casper/android/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;


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
    .line 447
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$6;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V
    .locals 4

    .prologue
    .line 451
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$6;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->h(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$6;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/s;->a(J)V

    .line 453
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$6;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 454
    new-instance v0, Lio/casper/android/b/a/g;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$6;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/g;-><init>(Landroid/content/Context;)V

    const-string v1, "Add"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/g;->a(Ljava/lang/String;)Lio/casper/android/b/a/g;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 475
    :goto_0
    return-void

    .line 457
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$6;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 458
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 459
    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 460
    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 461
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 463
    new-instance v1, Lio/casper/android/activity/MainActivity$6$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$6$1;-><init>(Lio/casper/android/activity/MainActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 471
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_0
.end method
