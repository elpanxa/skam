.class public Lcom/startapp/android/publish/adinformation/c;
.super Landroid/widget/RelativeLayout;
.source "StartAppSDK"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

.field private g:Lcom/startapp/android/publish/adinformation/d;

.field private h:Lcom/startapp/android/publish/adinformation/d;

.field private i:Lcom/startapp/android/publish/adinformation/a$b;

.field private j:Lcom/startapp/android/publish/model/AdPreferences$Placement;

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;

.field private n:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/adinformation/b;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/startapp/android/publish/adinformation/c$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/adinformation/c$1;-><init>(Lcom/startapp/android/publish/adinformation/c;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->d:Landroid/view/View$OnClickListener;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->e:Landroid/view/View$OnClickListener;

    .line 39
    sget-object v0, Lcom/startapp/android/publish/adinformation/a$b;->b:Lcom/startapp/android/publish/adinformation/a$b;

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->i:Lcom/startapp/android/publish/adinformation/a$b;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/adinformation/c;->k:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->l:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/startapp/android/publish/adinformation/c$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/adinformation/c$2;-><init>(Lcom/startapp/android/publish/adinformation/c;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->m:Ljava/lang/Runnable;

    .line 59
    iput-object p3, p0, Lcom/startapp/android/publish/adinformation/c;->j:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 61
    invoke-virtual {p0, p2, p4}, Lcom/startapp/android/publish/adinformation/c;->a(Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/adinformation/b;)V

    .line 62
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/b;->a(Landroid/view/View;Landroid/view/View;)V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/adinformation/c;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/adinformation/c;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/startapp/android/publish/adinformation/c;->k:Z

    return p1
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/c;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/c;->i:Lcom/startapp/android/publish/adinformation/a$b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/a$b;->a()Lcom/startapp/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/adinformation/AdInformationConfig$ImageResourceType;)Lcom/startapp/android/publish/adinformation/d;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->i:Lcom/startapp/android/publish/adinformation/a$b;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adinformation/a$b;->b()Lcom/startapp/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/adinformation/AdInformationConfig$ImageResourceType;)Lcom/startapp/android/publish/adinformation/d;

    move-result-object v2

    .line 125
    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/d;->b()I

    move-result v6

    invoke-static {v5, v6}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/d;->c()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {v7}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->c()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/d;->b()I

    move-result v5

    invoke-static {v3, v5}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/d;->c()I

    move-result v6

    invoke-static {v5, v6}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v9, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    invoke-virtual {v9, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 133
    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 134
    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->n:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    invoke-virtual {v3, v9}, Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;->addRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 135
    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/d;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/d;->b()I

    move-result v0

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/c;->n:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;->getAnimationStartMultiplier()I

    move-result v2

    mul-int/2addr v2, v0

    .line 136
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 140
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 141
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/adinformation/c;->k:Z

    .line 147
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method

.method static synthetic b(Lcom/startapp/android/publish/adinformation/c;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/startapp/android/publish/adinformation/c;->k:Z

    return v0
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->h:Lcom/startapp/android/publish/adinformation/d;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/d;->b()I

    move-result v0

    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->g:Lcom/startapp/android/publish/adinformation/d;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adinformation/d;->b()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->n:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;->getAnimationStartMultiplier()I

    move-result v3

    mul-int/2addr v3, v0

    .line 171
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v3

    int-to-float v4, v3

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 175
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 177
    new-instance v1, Lcom/startapp/android/publish/adinformation/c$4;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/adinformation/c$4;-><init>(Lcom/startapp/android/publish/adinformation/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    return-void
.end method

.method static synthetic c(Lcom/startapp/android/publish/adinformation/c;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/c;->c()V

    return-void
.end method

.method static synthetic d(Lcom/startapp/android/publish/adinformation/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/startapp/android/publish/adinformation/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/startapp/android/publish/adinformation/c;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/c;->a()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/adinformation/b;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adinformation/c;->setSize(Lcom/startapp/android/publish/adinformation/a$b;)V

    .line 68
    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/a;->a(Landroid/content/Context;)Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    .line 69
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adinformation/a$b;->a()Lcom/startapp/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/adinformation/AdInformationConfig$ImageResourceType;)Lcom/startapp/android/publish/adinformation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->g:Lcom/startapp/android/publish/adinformation/d;

    .line 73
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adinformation/a$b;->b()Lcom/startapp/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/adinformation/AdInformationConfig$ImageResourceType;)Lcom/startapp/android/publish/adinformation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->h:Lcom/startapp/android/publish/adinformation/d;

    .line 75
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/startapp/android/publish/adinformation/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p2}, Lcom/startapp/android/publish/adinformation/b;->c()Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->n:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    .line 81
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    const v1, 0x57f00001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 84
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    const-string v1, "infoExtended"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    const v1, 0x57f00002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 88
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->g:Lcom/startapp/android/publish/adinformation/d;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/adinformation/d;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->h:Lcom/startapp/android/publish/adinformation/d;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/adinformation/d;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    .line 93
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/c;->g:Lcom/startapp/android/publish/adinformation/d;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/d;->b()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->c()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->g:Lcom/startapp/android/publish/adinformation/d;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adinformation/d;->c()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {v4}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->c()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 100
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->g:Lcom/startapp/android/publish/adinformation/d;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adinformation/d;->b()I

    move-result v3

    invoke-static {v2, v3}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/startapp/android/publish/adinformation/c;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/startapp/android/publish/adinformation/c;->g:Lcom/startapp/android/publish/adinformation/d;

    invoke-virtual {v4}, Lcom/startapp/android/publish/adinformation/d;->c()I

    move-result v4

    invoke-static {v3, v4}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 105
    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 107
    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/c;->n:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    invoke-virtual {v2, v1}, Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;->addRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 108
    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/c;->a()V

    .line 111
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/adinformation/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->f:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/c;->j:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/model/AdPreferences$Placement;)Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->n:Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    goto/16 :goto_0
.end method

.method protected setOnInfoClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/startapp/android/publish/adinformation/c$3;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/adinformation/c$3;-><init>(Lcom/startapp/android/publish/adinformation/c;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/c;->e:Landroid/view/View$OnClickListener;

    .line 163
    return-void
.end method

.method public setSize(Lcom/startapp/android/publish/adinformation/a$b;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/c;->i:Lcom/startapp/android/publish/adinformation/a$b;

    .line 167
    return-void
.end method
