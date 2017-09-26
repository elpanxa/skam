.class public Lcom/gc/materialdesign/widgets/SnackBar;
.super Landroid/app/Dialog;
.source "SnackBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gc/materialdesign/widgets/SnackBar$OnHideListener;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field backgroundButton:I

.field backgroundSnackBar:I

.field button:Lcom/gc/materialdesign/views/ButtonFlat;

.field buttonText:Ljava/lang/String;

.field dismissTimer:Ljava/lang/Thread;

.field handler:Landroid/os/Handler;

.field private mIndeterminate:Z

.field private mTimer:I

.field onClickListener:Landroid/view/View$OnClickListener;

.field onHideListener:Lcom/gc/materialdesign/widgets/SnackBar$OnHideListener;

.field text:Ljava/lang/String;

.field textSize:F

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    const v0, 0x103000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->textSize:F

    .line 30
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->backgroundSnackBar:I

    .line 31
    const-string v0, "#1E88E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->backgroundButton:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mIndeterminate:Z

    .line 36
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mTimer:I

    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gc/materialdesign/widgets/SnackBar$2;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/SnackBar$2;-><init>(Lcom/gc/materialdesign/widgets/SnackBar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->dismissTimer:Ljava/lang/Thread;

    .line 115
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/gc/materialdesign/widgets/SnackBar$3;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/SnackBar$3;-><init>(Lcom/gc/materialdesign/widgets/SnackBar;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->handler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->activity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/gc/materialdesign/widgets/SnackBar;->text:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 40
    const v0, 0x103000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->textSize:F

    .line 30
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->backgroundSnackBar:I

    .line 31
    const-string v0, "#1E88E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->backgroundButton:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mIndeterminate:Z

    .line 36
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mTimer:I

    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gc/materialdesign/widgets/SnackBar$2;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/SnackBar$2;-><init>(Lcom/gc/materialdesign/widgets/SnackBar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->dismissTimer:Ljava/lang/Thread;

    .line 115
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/gc/materialdesign/widgets/SnackBar$3;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/SnackBar$3;-><init>(Lcom/gc/materialdesign/widgets/SnackBar;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->handler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->activity:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/gc/materialdesign/widgets/SnackBar;->text:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/gc/materialdesign/widgets/SnackBar;->buttonText:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/gc/materialdesign/widgets/SnackBar;->onClickListener:Landroid/view/View$OnClickListener;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/gc/materialdesign/widgets/SnackBar;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mTimer:I

    return v0
.end method

.method static synthetic access$101(Lcom/gc/materialdesign/widgets/SnackBar;)V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->activity:Landroid/app/Activity;

    sget v1, Lcom/gc/materialdesign/R$anim;->snackbar_hide_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/gc/materialdesign/widgets/SnackBar$4;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/SnackBar$4;-><init>(Lcom/gc/materialdesign/widgets/SnackBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 148
    iget-object v1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    return-void
.end method

.method public getDismissTimer()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mTimer:I

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mIndeterminate:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/SnackBar;->requestWindowFeature(I)Z

    .line 58
    sget v0, Lcom/gc/materialdesign/R$layout;->snackbar:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/SnackBar;->setContentView(I)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/SnackBar;->setCanceledOnTouchOutside(Z)V

    .line 60
    sget v0, Lcom/gc/materialdesign/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/SnackBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    sget v0, Lcom/gc/materialdesign/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/SnackBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->textSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    sget v0, Lcom/gc/materialdesign/R$id;->buttonflat:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/SnackBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gc/materialdesign/views/ButtonFlat;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->button:Lcom/gc/materialdesign/views/ButtonFlat;

    .line 63
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->onClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->button:Lcom/gc/materialdesign/views/ButtonFlat;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ButtonFlat;->setVisibility(I)V

    .line 78
    :goto_0
    sget v0, Lcom/gc/materialdesign/R$id;->snackbar:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/SnackBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->view:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->view:Landroid/view/View;

    iget v1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->backgroundSnackBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->button:Lcom/gc/materialdesign/views/ButtonFlat;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ButtonFlat;->setText(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->button:Lcom/gc/materialdesign/views/ButtonFlat;

    iget v1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->backgroundButton:I

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ButtonFlat;->setBackgroundColor(I)V

    .line 69
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->button:Lcom/gc/materialdesign/views/ButtonFlat;

    new-instance v1, Lcom/gc/materialdesign/widgets/SnackBar$1;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/SnackBar$1;-><init>(Lcom/gc/materialdesign/widgets/SnackBar;)V

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/ButtonFlat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/gc/materialdesign/widgets/SnackBar;->dismiss()V

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundSnackBar(I)V
    .locals 1

    .prologue
    .line 185
    iput p1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->backgroundSnackBar:I

    .line 186
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public setColorButton(I)V
    .locals 1

    .prologue
    .line 195
    iput p1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->backgroundButton:I

    .line 196
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->button:Lcom/gc/materialdesign/views/ButtonFlat;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->button:Lcom/gc/materialdesign/views/ButtonFlat;

    invoke-virtual {v0, p1}, Lcom/gc/materialdesign/views/ButtonFlat;->setBackgroundColor(I)V

    .line 198
    :cond_0
    return-void
.end method

.method public setDismissTimer(I)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mTimer:I

    .line 174
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mIndeterminate:Z

    .line 166
    return-void
.end method

.method public setMessageTextSize(F)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->textSize:F

    .line 162
    return-void
.end method

.method public setOnhideListener(Lcom/gc/materialdesign/widgets/SnackBar$OnHideListener;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->onHideListener:Lcom/gc/materialdesign/widgets/SnackBar$OnHideListener;

    .line 211
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 94
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/SnackBar;->activity:Landroid/app/Activity;

    sget v2, Lcom/gc/materialdesign/R$anim;->snackbar_show_animation:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    iget-boolean v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->mIndeterminate:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar;->dismissTimer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    :cond_0
    return-void
.end method
