.class public Lcom/gc/materialdesign/widgets/ProgressDialog;
.super Landroid/app/Dialog;
.source "ProgressDialog.java"


# instance fields
.field backView:Landroid/view/View;

.field context:Landroid/content/Context;

.field progressColor:I

.field title:Ljava/lang/String;

.field titleTextView:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    const v0, 0x103000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->progressColor:I

    .line 31
    iput-object p2, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->title:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 36
    const v0, 0x103000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->progressColor:I

    .line 37
    iput-object p2, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->title:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->progressColor:I

    .line 39
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic access$001(Lcom/gc/materialdesign/widgets/ProgressDialog;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->context:Landroid/content/Context;

    sget v1, Lcom/gc/materialdesign/R$anim;->dialog_main_hide_amination:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/gc/materialdesign/widgets/ProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/ProgressDialog$2;-><init>(Lcom/gc/materialdesign/widgets/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 131
    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->context:Landroid/content/Context;

    sget v2, Lcom/gc/materialdesign/R$anim;->dialog_root_hide_amin:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->backView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ProgressDialog;->requestWindowFeature(I)Z

    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lcom/gc/materialdesign/R$layout;->progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ProgressDialog;->setContentView(I)V

    .line 48
    sget v0, Lcom/gc/materialdesign/R$id;->contentDialog:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->view:Landroid/view/View;

    .line 49
    sget v0, Lcom/gc/materialdesign/R$id;->dialog_rootView:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->backView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->backView:Landroid/view/View;

    new-instance v1, Lcom/gc/materialdesign/widgets/ProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/ProgressDialog$1;-><init>(Lcom/gc/materialdesign/widgets/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    sget v0, Lcom/gc/materialdesign/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->titleTextView:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ProgressDialog;->setTitle(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->progressColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 67
    sget v0, Lcom/gc/materialdesign/R$id;->progressBarCircularIndetermininate:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gc/materialdesign/views/ProgressBarCircularIndeterminate;

    .line 68
    iget v1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->progressColor:I

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ProgressBarCircularIndeterminate;->setBackgroundColor(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->title:Ljava/lang/String;

    .line 91
    if-nez p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleTextView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->titleTextView:Landroid/widget/TextView;

    .line 105
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 79
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->context:Landroid/content/Context;

    sget v2, Lcom/gc/materialdesign/R$anim;->dialog_main_show_amination:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->backView:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog;->context:Landroid/content/Context;

    sget v2, Lcom/gc/materialdesign/R$anim;->dialog_root_show_amin:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    return-void
.end method
