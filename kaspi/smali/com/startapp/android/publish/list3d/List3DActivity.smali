.class public Lcom/startapp/android/publish/list3d/List3DActivity;
.super Landroid/app/Activity;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/list3d/f;


# instance fields
.field private a:Lcom/startapp/android/publish/list3d/c;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/list3d/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    .line 54
    iput-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->c:Landroid/webkit/WebView;

    .line 59
    new-instance v0, Lcom/startapp/android/publish/list3d/List3DActivity$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/list3d/List3DActivity$1;-><init>(Lcom/startapp/android/publish/list3d/List3DActivity;)V

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    .line 294
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/c;->getFirstItemPosition()I

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/d;

    .line 303
    sget-object v1, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/e;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 304
    sget-object v1, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/list3d/ListItem;

    .line 309
    sget-object v2, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/ListItem;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/startapp/android/publish/list3d/e;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 310
    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 312
    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/ListItem;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/list3d/d;->a(Z)V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, v0, v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->overridePendingTransition(II)V

    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 320
    invoke-static {p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;)V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->g:Landroid/content/BroadcastReceiver;

    .line 323
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 325
    return-void

    .line 323
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/list3d/List3DActivity;->overridePendingTransition(II)V

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/List3DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->requestWindowFeature(I)Z

    .line 73
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/List3DActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 77
    :cond_0
    if-nez p1, :cond_1

    .line 78
    invoke-static {p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.startapp.android.CloseAdActivity"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/List3DActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->e:I

    .line 86
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;Z)V

    .line 88
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/List3DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "overlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->requestWindowFeature(I)Z

    .line 91
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/List3DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "adTag"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->f:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getBackgroundGradientTop()I

    move-result v0

    .line 94
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/MetaData;->getBackgroundGradientBottom()I

    move-result v2

    .line 96
    new-instance v3, Lcom/startapp/android/publish/list3d/c;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->f:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/startapp/android/publish/list3d/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    .line 97
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v2, v5, v0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    invoke-virtual {v0, v3}, Lcom/startapp/android/publish/list3d/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    sget-object v0, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/e;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->d:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->d:Ljava/util/List;

    if-nez v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/List3DActivity;->finish()V

    .line 260
    :goto_0
    return-void

    .line 106
    :cond_2
    const-string v0, ""

    .line 107
    if-eqz v1, :cond_3

    .line 110
    invoke-static {p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    iget-object v3, v3, Lcom/startapp/android/publish/list3d/c;->a:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.startapp.android.Activity3DGetValues"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 119
    :goto_1
    new-instance v2, Lcom/startapp/android/publish/list3d/b;

    iget-object v3, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->f:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/startapp/android/publish/list3d/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v3, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v3, p0, v0}, Lcom/startapp/android/publish/list3d/e;->a(Lcom/startapp/android/publish/list3d/f;Z)V

    .line 121
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/list3d/c;->setAdapter(Landroid/widget/Adapter;)V

    .line 122
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    new-instance v1, Lcom/startapp/android/publish/list3d/SimpleDynamics;

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v3}, Lcom/startapp/android/publish/list3d/SimpleDynamics;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/list3d/c;->setDynamics(Lcom/startapp/android/publish/list3d/Dynamics;)V

    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    new-instance v1, Lcom/startapp/android/publish/list3d/List3DActivity$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/list3d/List3DActivity$2;-><init>(Lcom/startapp/android/publish/list3d/List3DActivity;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/list3d/c;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 152
    const-string v0, "StartApp Ad"

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    const/high16 v0, 0x57f00000

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 154
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getTitleBackgroundColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 170
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 174
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    const/4 v1, 0x0

    const/4 v6, 0x2

    invoke-static {p0, v6}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-static {p0, v8}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 177
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getTitleTextColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getTitleTextSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 180
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 181
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getTitleContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    const v8, -0xafafb0

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 183
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getTitleTextDecoration()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/widget/TextView;Ljava/util/Set;)V

    .line 184
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 187
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    const-string v0, "close_button.png"

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 192
    if-eqz v7, :cond_5

    .line 193
    new-instance v1, Landroid/widget/ImageButton;

    const/4 v0, 0x0

    const v8, 0x103000f

    invoke-direct {v1, p0, v0, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, v1

    .line 194
    check-cast v0, Landroid/widget/ImageButton;

    const/16 v8, 0x24

    invoke-static {p0, v8}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v8

    const/16 v9, 0x24

    invoke-static {p0, v9}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    :goto_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v0, Lcom/startapp/android/publish/list3d/List3DActivity$3;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/list3d/List3DActivity$3;-><init>(Lcom/startapp/android/publish/list3d/List3DActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const-string v0, "x"

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 208
    const v0, 0x57f00003

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 209
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 212
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 213
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x2

    invoke-static {p0, v6}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getTitleLineColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 216
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 221
    iget-object v1, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/list3d/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 226
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    const/16 v5, 0x50

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getPoweredByBackgroundColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 230
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 231
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/android/publish/model/MetaData;->getPoweredByTextColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p0, v5}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {p0, v7}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 236
    const-string v4, "Powered By "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 241
    const-string v4, "logo.png"

    invoke-static {p0, v4}, Lcom/startapp/android/publish/h/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/List3DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "adInfoOverride"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adinformation/b;

    .line 245
    new-instance v1, Lcom/startapp/android/publish/adinformation/a;

    sget-object v4, Lcom/startapp/android/publish/adinformation/a$b;->b:Lcom/startapp/android/publish/adinformation/a$b;

    sget-object v5, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {v1, p0, v4, v5, v0}, Lcom/startapp/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/adinformation/b;)V

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    .line 247
    invoke-virtual {p0, v2, v3}, Lcom/startapp/android/publish/list3d/List3DActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 252
    new-instance v1, Lcom/startapp/android/publish/list3d/List3DActivity$4;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/list3d/List3DActivity$4;-><init>(Lcom/startapp/android/publish/list3d/List3DActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/c;->a()V

    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/list3d/c;->setHint(Z)V

    .line 115
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->a:Lcom/startapp/android/publish/list3d/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/list3d/c;->setFade(Z)V

    .line 116
    const-string v0, "back"

    goto/16 :goto_1

    .line 120
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 196
    :cond_5
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 197
    check-cast v0, Landroid/widget/TextView;

    const-string v7, "   x   "

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 198
    check-cast v0, Landroid/widget/TextView;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->b:Landroid/app/ProgressDialog;

    .line 270
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 275
    :cond_2
    sget-object v0, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/startapp/android/publish/list3d/e;->a(Lcom/startapp/android/publish/list3d/f;Z)V

    .line 276
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;Z)V

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 278
    return-void

    .line 270
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 284
    iget v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity;->e:I

    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/List3DActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.HideDisplayBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/List3DActivity;->finish()V

    .line 290
    return-void
.end method
