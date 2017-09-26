.class public Lcom/gc/materialdesign/widgets/Dialog;
.super Landroid/app/Dialog;
.source "Dialog.java"


# instance fields
.field backView:Landroid/view/View;

.field buttonAccept:Lcom/gc/materialdesign/views/ButtonFlat;

.field buttonCancel:Lcom/gc/materialdesign/views/ButtonFlat;

.field buttonCancelText:Ljava/lang/String;

.field context:Landroid/content/Context;

.field message:Ljava/lang/String;

.field messageTextView:Landroid/widget/TextView;

.field onAcceptButtonClickListener:Landroid/view/View$OnClickListener;

.field onCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field title:Ljava/lang/String;

.field titleTextView:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const v0, 0x103000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->context:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/gc/materialdesign/widgets/Dialog;->message:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/gc/materialdesign/widgets/Dialog;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$001(Lcom/gc/materialdesign/widgets/Dialog;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public addCancelButton(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancelText:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public addCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancelText:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/gc/materialdesign/widgets/Dialog;->onCancelButtonClickListener:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->context:Landroid/content/Context;

    sget v1, Lcom/gc/materialdesign/R$anim;->dialog_main_hide_amination:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/gc/materialdesign/widgets/Dialog$4;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/Dialog$4;-><init>(Lcom/gc/materialdesign/widgets/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 212
    iget-object v1, p0, Lcom/gc/materialdesign/widgets/Dialog;->context:Landroid/content/Context;

    sget v2, Lcom/gc/materialdesign/R$anim;->dialog_root_hide_amin:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/gc/materialdesign/widgets/Dialog;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->backView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    return-void
.end method

.method public getButtonAccept()Lcom/gc/materialdesign/views/ButtonFlat;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonAccept:Lcom/gc/materialdesign/views/ButtonFlat;

    return-object v0
.end method

.method public getButtonCancel()Lcom/gc/materialdesign/views/ButtonFlat;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancel:Lcom/gc/materialdesign/views/ButtonFlat;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->messageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->requestWindowFeature(I)Z

    .line 57
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/gc/materialdesign/R$layout;->dialog:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->setContentView(I)V

    .line 60
    sget v0, Lcom/gc/materialdesign/R$id;->contentDialog:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->view:Landroid/view/View;

    .line 61
    sget v0, Lcom/gc/materialdesign/R$id;->dialog_rootView:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->backView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->backView:Landroid/view/View;

    new-instance v1, Lcom/gc/materialdesign/widgets/Dialog$1;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/Dialog$1;-><init>(Lcom/gc/materialdesign/widgets/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    sget v0, Lcom/gc/materialdesign/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->titleTextView:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->setTitle(Ljava/lang/String;)V

    .line 79
    sget v0, Lcom/gc/materialdesign/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->messageTextView:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->setMessage(Ljava/lang/String;)V

    .line 82
    sget v0, Lcom/gc/materialdesign/R$id;->button_accept:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gc/materialdesign/views/ButtonFlat;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonAccept:Lcom/gc/materialdesign/views/ButtonFlat;

    .line 83
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonAccept:Lcom/gc/materialdesign/views/ButtonFlat;

    new-instance v1, Lcom/gc/materialdesign/widgets/Dialog$2;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/Dialog$2;-><init>(Lcom/gc/materialdesign/widgets/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ButtonFlat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancelText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    sget v0, Lcom/gc/materialdesign/R$id;->button_cancel:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gc/materialdesign/views/ButtonFlat;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancel:Lcom/gc/materialdesign/views/ButtonFlat;

    .line 94
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancel:Lcom/gc/materialdesign/views/ButtonFlat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ButtonFlat;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancel:Lcom/gc/materialdesign/views/ButtonFlat;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ButtonFlat;->setText(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancel:Lcom/gc/materialdesign/views/ButtonFlat;

    new-instance v1, Lcom/gc/materialdesign/widgets/Dialog$3;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/Dialog$3;-><init>(Lcom/gc/materialdesign/widgets/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ButtonFlat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setButtonAccept(Lcom/gc/materialdesign/views/ButtonFlat;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonAccept:Lcom/gc/materialdesign/views/ButtonFlat;

    .line 164
    return-void
.end method

.method public setButtonCancel(Lcom/gc/materialdesign/views/ButtonFlat;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancel:Lcom/gc/materialdesign/views/ButtonFlat;

    .line 172
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->message:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public setMessageTextView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->messageTextView:Landroid/widget/TextView;

    .line 134
    return-void
.end method

.method public setOnAcceptButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 176
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->onAcceptButtonClickListener:Landroid/view/View$OnClickListener;

    .line 177
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonAccept:Lcom/gc/materialdesign/views/ButtonFlat;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonAccept:Lcom/gc/materialdesign/views/ButtonFlat;

    invoke-virtual {v0, p1}, Lcom/gc/materialdesign/views/ButtonFlat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_0
    return-void
.end method

.method public setOnCancelButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->onCancelButtonClickListener:Landroid/view/View$OnClickListener;

    .line 184
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancel:Lcom/gc/materialdesign/views/ButtonFlat;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->buttonCancel:Lcom/gc/materialdesign/views/ButtonFlat;

    invoke-virtual {v0, p1}, Lcom/gc/materialdesign/views/ButtonFlat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->title:Ljava/lang/String;

    .line 142
    if-nez p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleTextView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog;->titleTextView:Landroid/widget/TextView;

    .line 156
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 113
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/Dialog;->context:Landroid/content/Context;

    sget v2, Lcom/gc/materialdesign/R$anim;->dialog_main_show_amination:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog;->backView:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/Dialog;->context:Landroid/content/Context;

    sget v2, Lcom/gc/materialdesign/R$anim;->dialog_root_show_amin:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    return-void
.end method
