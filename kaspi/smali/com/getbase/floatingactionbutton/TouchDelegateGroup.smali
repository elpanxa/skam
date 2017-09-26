.class public Lcom/getbase/floatingactionbutton/TouchDelegateGroup;
.super Landroid/view/TouchDelegate;
.source "TouchDelegateGroup.java"


# static fields
.field private static final USELESS_HACKY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mCurrentTouchDelegate:Landroid/view/TouchDelegate;

.field private mEnabled:Z

.field private final mTouchDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/TouchDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->USELESS_HACKY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->USELESS_HACKY_RECT:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public addTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1
    .param p1    # Landroid/view/TouchDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public clearTouchDelegates()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 35
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mEnabled:Z

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v4

    .line 65
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 45
    :goto_2
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TouchDelegate;

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    iput-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    move v2, v3

    .line 49
    goto :goto_0

    .line 45
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move-object v0, v4

    .line 52
    goto :goto_1

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    goto :goto_1

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 61
    iput-object v4, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    goto :goto_1

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    if-ne v0, p1, :cond_0

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 30
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->mEnabled:Z

    .line 70
    return-void
.end method
