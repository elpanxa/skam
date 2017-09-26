.class public Lcom/startapp/android/publish/slider/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/b$a;
    }
.end annotation


# static fields
.field private static i:Z


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

.field private d:Landroid/os/Handler;

.field private e:Lcom/startapp/android/publish/a/l;

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Lcom/startapp/android/publish/adinformation/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/startapp/android/publish/slider/b;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/slider/b;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/slider/b;->d:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/slider/b;->f:I

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/slider/b;->g:Landroid/os/Handler;

    .line 65
    invoke-static {}, Lcom/startapp/android/publish/adinformation/b;->a()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/slider/b;->h:Lcom/startapp/android/publish/adinformation/b;

    .line 74
    const-string v0, "Slider"

    const/4 v1, 0x3

    const-string v2, "new Slider Created"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    .line 77
    new-instance v0, Lcom/startapp/android/publish/a/l;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/a/l;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/startapp/android/publish/slider/b;->e:Lcom/startapp/android/publish/a/l;

    .line 78
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->e:Lcom/startapp/android/publish/a/l;

    new-instance v1, Lcom/startapp/android/publish/slider/b$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/slider/b$1;-><init>(Lcom/startapp/android/publish/slider/b;)V

    invoke-virtual {v0, p2, v1}, Lcom/startapp/android/publish/a/l;->a(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/slider/b;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/startapp/android/publish/slider/b;->f:I

    return p1
.end method

.method static synthetic a(Lcom/startapp/android/publish/slider/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/b;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 102
    new-instance v0, Lcom/startapp/android/publish/slider/b$2;

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/startapp/android/publish/slider/b$2;-><init>(Lcom/startapp/android/publish/slider/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/slider/b$3;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/slider/b$3;-><init>(Lcom/startapp/android/publish/slider/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    new-instance v0, Lcom/startapp/android/publish/slider/WebViewJSInterface;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/slider/WebViewJSInterface;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    const-string v2, "HTMLOUT"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 140
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/slider/b$a;

    invoke-direct {v1, p0, v6}, Lcom/startapp/android/publish/slider/b$a;-><init>(Lcom/startapp/android/publish/slider/b;Lcom/startapp/android/publish/slider/b$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->e:Lcom/startapp/android/publish/a/l;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/l;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/startapp/android/publish/slider/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slider URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method static synthetic b(Lcom/startapp/android/publish/slider/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/b;->d()V

    return-void
.end method

.method static synthetic c(Lcom/startapp/android/publish/slider/b;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic d(Lcom/startapp/android/publish/slider/b;)Lcom/startapp/android/publish/slider/sliding/DrawerLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->c:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    return-object v0
.end method

.method private d()V
    .locals 13

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;)Z

    move-result v0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/ViewGroup;

    .line 167
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    new-instance v1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/startapp/android/publish/slider/b;->c:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    .line 173
    new-instance v11, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    invoke-direct {v11, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v12, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    invoke-direct {v12, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 180
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 185
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    const-string v1, "tab_side.png"

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, -0x4270a3d7    # -0.07f

    const/4 v7, 0x1

    const v8, 0x3d8f5c29    # 0.07f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 197
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3d8f5c29    # 0.07f

    const/4 v8, 0x1

    const v9, -0x4270a3d7    # -0.07f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 202
    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 203
    const-wide/16 v2, 0x28

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 205
    new-instance v2, Lcom/startapp/android/publish/slider/b$4;

    invoke-direct {v2, p0, v12, v0}, Lcom/startapp/android/publish/slider/b$4;-><init>(Lcom/startapp/android/publish/slider/b;Landroid/widget/ImageButton;Landroid/view/animation/TranslateAnimation;)V

    .line 212
    new-instance v2, Lcom/startapp/android/publish/slider/b$5;

    invoke-direct {v2, p0, v12, v1}, Lcom/startapp/android/publish/slider/b$5;-><init>(Lcom/startapp/android/publish/slider/b;Landroid/widget/ImageButton;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 227
    new-instance v2, Lcom/startapp/android/publish/slider/b$6;

    invoke-direct {v2, p0, v12, v0}, Lcom/startapp/android/publish/slider/b$6;-><init>(Lcom/startapp/android/publish/slider/b;Landroid/widget/ImageButton;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 249
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 251
    sget-boolean v1, Lcom/startapp/android/publish/slider/b;->i:Z

    if-nez v1, :cond_0

    .line 252
    const/4 v1, 0x1

    sput-boolean v1, Lcom/startapp/android/publish/slider/b;->i:Z

    .line 253
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->g:Landroid/os/Handler;

    new-instance v2, Lcom/startapp/android/publish/slider/b$7;

    invoke-direct {v2, p0, v12, v0}, Lcom/startapp/android/publish/slider/b$7;-><init>(Lcom/startapp/android/publish/slider/b;Landroid/widget/ImageButton;Landroid/view/animation/TranslateAnimation;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;-><init>(II)V

    .line 263
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->c:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->c:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0, v11}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->addView(Landroid/view/View;)V

    .line 266
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance v1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;

    iget-object v2, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    const/16 v3, 0x122

    invoke-static {v2, v3}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;-><init>(II)V

    .line 269
    const/4 v2, 0x3

    iput v2, v1, Lcom/startapp/android/publish/slider/sliding/DrawerLayout$c;->a:I

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 272
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->c:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->addView(Landroid/view/View;)V

    .line 273
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->c:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    new-instance v1, Lcom/startapp/android/publish/adinformation/a;

    iget-object v2, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    sget-object v3, Lcom/startapp/android/publish/adinformation/a$b;->b:Lcom/startapp/android/publish/adinformation/a$b;

    sget-object v4, Lcom/startapp/android/publish/model/AdPreferences$Placement;->DEVICE_SIDEBAR:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    iget-object v5, p0, Lcom/startapp/android/publish/slider/b;->h:Lcom/startapp/android/publish/adinformation/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/adinformation/b;)V

    .line 277
    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    .line 279
    new-instance v1, Lcom/startapp/android/publish/slider/b$8;

    invoke-direct {v1, p0, v0}, Lcom/startapp/android/publish/slider/b$8;-><init>(Lcom/startapp/android/publish/slider/b;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v12, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->c:Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    new-instance v1, Lcom/startapp/android/publish/slider/b$9;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/slider/b$9;-><init>(Lcom/startapp/android/publish/slider/b;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->setDrawerListener(Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;)V

    .line 311
    :cond_1
    return-void

    .line 182
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/startapp/android/publish/slider/b;)I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/startapp/android/publish/slider/b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/startapp/android/publish/slider/b;->f:I

    return v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 314
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b;->e:Lcom/startapp/android/publish/a/l;

    .line 315
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "trackingUrl"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->b:Landroid/webkit/WebView;

    const-string v2, "javascript:window.HTMLOUT.processHTML(document.getElementById(\'SearchResults\').innerHTML);"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    new-instance v2, Lcom/startapp/android/publish/slider/a;

    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/startapp/android/publish/slider/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/startapp/android/publish/a/l;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/slider/a;->a(Ljava/lang/String;)V

    .line 323
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    const-string v2, "Slider"

    const/4 v3, 0x6

    const-string v4, "Error reading SearchResults div "

    invoke-static {v2, v3, v4, v0}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/startapp/android/publish/slider/b;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/startapp/android/publish/slider/b;->f:I

    return v0
.end method

.method static synthetic g(Lcom/startapp/android/publish/slider/b;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/b;->e()V

    return-void
.end method

.method static synthetic h(Lcom/startapp/android/publish/slider/b;)Lcom/startapp/android/publish/a/l;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->e:Lcom/startapp/android/publish/a/l;

    return-object v0
.end method

.method static synthetic i(Lcom/startapp/android/publish/slider/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b;->a:Landroid/app/Activity;

    return-object v0
.end method
