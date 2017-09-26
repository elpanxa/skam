.class Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;
.super Ljava/lang/Object;
.source "AlertDialogWrapper.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

.field final synthetic val$checkedItems:[Z

.field final synthetic val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    iput-object p3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    .line 276
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 277
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    aget-boolean v2, v2, v0

    .line 282
    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v3, v0

    .line 284
    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    aget-boolean v3, v3, v0

    if-eq v2, v3, :cond_0

    .line 285
    iget-object v2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    aget-boolean v3, v3, v0

    invoke-interface {v2, p1, v0, v3}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 278
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
