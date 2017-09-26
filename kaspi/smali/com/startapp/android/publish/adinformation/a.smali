.class public Lcom/startapp/android/publish/adinformation/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adinformation/a$5;,
        Lcom/startapp/android/publish/adinformation/a$b;,
        Lcom/startapp/android/publish/adinformation/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/startapp/android/publish/adinformation/c;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/app/Dialog;

.field private f:Lcom/startapp/android/publish/model/AdPreferences$Placement;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/os/Handler;

.field private i:Lcom/startapp/android/publish/adinformation/a$a;

.field private j:Z

.field private k:Lcom/startapp/android/publish/adinformation/b;

.field private l:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

.field private m:Lcom/startapp/android/publish/adinformation/e;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/adinformation/b;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->e:Landroid/app/Dialog;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->h:Landroid/os/Handler;

    .line 70
    sget-object v0, Lcom/startapp/android/publish/adinformation/a$a;->a:Lcom/startapp/android/publish/adinformation/a$a;

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->i:Lcom/startapp/android/publish/adinformation/a$a;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/adinformation/a;->j:Z

    .line 77
    new-instance v0, Lcom/startapp/android/publish/adinformation/a$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/adinformation/a$1;-><init>(Lcom/startapp/android/publish/adinformation/a;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->n:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/startapp/android/publish/adinformation/a$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/adinformation/a$2;-><init>(Lcom/startapp/android/publish/adinformation/a;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->o:Ljava/lang/Runnable;

    .line 102
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    .line 103
    iput-object p3, p0, Lcom/startapp/android/publish/adinformation/a;->f:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 104
    iput-object p4, p0, Lcom/startapp/android/publish/adinformation/a;->k:Lcom/startapp/android/publish/adinformation/b;

    .line 106
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->d()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->l:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    .line 107
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->l:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->e()Lcom/startapp/android/publish/adinformation/e;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->m:Lcom/startapp/android/publish/adinformation/e;

    .line 109
    new-instance v0, Lcom/startapp/android/publish/adinformation/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/startapp/android/publish/adinformation/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/adinformation/b;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->b:Lcom/startapp/android/publish/adinformation/c;

    .line 110
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->b:Lcom/startapp/android/publish/adinformation/c;

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/adinformation/c;->setOnInfoClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/adinformation/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/startapp/android/publish/adinformation/AdInformationConfig;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAdInformationConfig()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Landroid/graphics/Point;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 240
    iput-boolean v2, p0, Lcom/startapp/android/publish/adinformation/a;->j:Z

    .line 242
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->e:Landroid/app/Dialog;

    .line 243
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 244
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 246
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->e:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 248
    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 250
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->e:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 251
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->e:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 252
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/adinformation/a;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adinformation/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->f:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdPreferences$Placement;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;Z)V

    .line 168
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/startapp/android/publish/adinformation/a;)Lcom/startapp/android/publish/adinformation/e;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->m:Lcom/startapp/android/publish/adinformation/e;

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;Landroid/graphics/Point;)V
    .locals 4

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/adinformation/a;->j:Z

    .line 257
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 262
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->h:Landroid/os/Handler;

    new-instance v2, Lcom/startapp/android/publish/adinformation/a$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/startapp/android/publish/adinformation/a$4;-><init>(Lcom/startapp/android/publish/adinformation/a;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method static synthetic c(Lcom/startapp/android/publish/adinformation/a;)Lcom/startapp/android/publish/adinformation/AdInformationConfig;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->l:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    return-object v0
.end method

.method static synthetic d(Lcom/startapp/android/publish/adinformation/a;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private d()Lcom/startapp/android/publish/adinformation/AdInformationConfig;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAdInformationConfig()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/startapp/android/publish/adinformation/a;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private e()Lcom/startapp/android/publish/adinformation/b;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->k:Lcom/startapp/android/publish/adinformation/b;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.onload=function(){document.getElementById(\'titlePlacement\').innerText=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\';}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->b:Lcom/startapp/android/publish/adinformation/c;

    return-object v0
.end method

.method public a(Landroid/widget/RelativeLayout;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->e()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->e()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->e()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/b;->b()Z

    move-result v0

    .line 126
    :goto_0
    if-eqz v0, :cond_0

    .line 127
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/a;->c:Landroid/widget/RelativeLayout;

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->e()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->e()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adinformation/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->e()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adinformation/b;->c()Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;->addRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 139
    :goto_1
    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/a;->b:Lcom/startapp/android/publish/adinformation/c;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->d()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->d()Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/a;->f:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/model/AdPreferences$Placement;)Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/adinformation/AdInformationPositions$Position;->addRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/startapp/android/publish/adinformation/a;->j:Z

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/adinformation/a;->j:Z

    .line 217
    sget-object v0, Lcom/startapp/android/publish/adinformation/a$5;->a:[I

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->i:Lcom/startapp/android/publish/adinformation/a$a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adinformation/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/adinformation/a$3;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/adinformation/a$3;-><init>(Lcom/startapp/android/publish/adinformation/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->m:Lcom/startapp/android/publish/adinformation/e;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adinformation/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0, v5}, Lcom/startapp/android/publish/adinformation/a;->a(Z)V

    .line 178
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->g:Landroid/widget/RelativeLayout;

    .line 180
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    .line 181
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 182
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 183
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/startapp/android/publish/adinformation/a;->l:Lcom/startapp/android/publish/adinformation/AdInformationConfig;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adinformation/AdInformationConfig;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/adinformation/AdInformationJsInterface;

    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/a;->n:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/a;->o:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3}, Lcom/startapp/android/publish/adinformation/AdInformationJsInterface;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-string v2, "startappwall"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 190
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 191
    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/b;->a(Landroid/view/WindowManager;Landroid/graphics/Point;)V

    .line 193
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 197
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 199
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/a;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/startapp/android/publish/adinformation/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-direct {p0}, Lcom/startapp/android/publish/adinformation/a;->f()V

    .line 204
    sget-object v0, Lcom/startapp/android/publish/adinformation/a$5;->a:[I

    iget-object v2, p0, Lcom/startapp/android/publish/adinformation/a;->i:Lcom/startapp/android/publish/adinformation/a$a;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adinformation/a$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/adinformation/a;->b(Landroid/view/ViewGroup;Landroid/graphics/Point;)V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/a;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/adinformation/a;->a(Landroid/view/ViewGroup;Landroid/graphics/Point;)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
