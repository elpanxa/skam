.class public Lio/casper/android/ui/AutoScaleImageView;
.super Landroid/widget/ImageView;
.source "AutoScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/ui/AutoScaleImageView$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoScaleImageView"


# instance fields
.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/casper/android/ui/AutoScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/casper/android/ui/AutoScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/16 v0, 0x11

    iput v0, p0, Lio/casper/android/ui/AutoScaleImageView;->mGravity:I

    .line 43
    return-void
.end method

.method private a()V
    .locals 13

    .prologue
    const/4 v1, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 59
    .line 60
    invoke-direct {p0}, Lio/casper/android/ui/AutoScaleImageView;->getParentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    const-string v0, "AutoScaleImageView"

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "Attempting to Init LayoutParams, but Parent View is null"

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lio/casper/android/ui/AutoScaleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lio/casper/android/ui/AutoScaleImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 76
    const-string v0, "AutoScaleImageView"

    const-string v5, "initLayoutParams [width=%s, height=%s]"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v0, v5, v6}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 79
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 81
    const-string v5, "AutoScaleImageView"

    const-string v6, "initLayoutParams [intrinsicWidth=%s, intrinsicHeight=%s]"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lio/casper/android/ui/AutoScaleImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    .line 88
    sget-object v6, Lio/casper/android/ui/AutoScaleImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 92
    new-instance v0, Lio/casper/android/ui/AutoScaleImageView$a;

    invoke-direct {v0, v3, v4}, Lio/casper/android/ui/AutoScaleImageView$a;-><init>(II)V

    .line 112
    :goto_1
    iget v2, v0, Lio/casper/android/ui/AutoScaleImageView$a;->width:I

    .line 113
    iget v3, v0, Lio/casper/android/ui/AutoScaleImageView$a;->height:I

    .line 115
    invoke-virtual {p0}, Lio/casper/android/ui/AutoScaleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 116
    if-nez v4, :cond_4

    .line 117
    const-string v0, "AutoScaleImageView"

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "Attempting to Init LayoutParams, but Parent LayoutParams is null"

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :pswitch_0
    int-to-float v5, v4

    .line 98
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v3

    div-float/2addr v2, v5

    div-float v2, v0, v2

    .line 99
    cmpl-float v0, v2, v12

    if-lez v0, :cond_2

    new-instance v0, Lio/casper/android/ui/AutoScaleImageView$a;

    div-float v2, v5, v2

    float-to-int v2, v2

    invoke-direct {v0, v3, v2}, Lio/casper/android/ui/AutoScaleImageView$a;-><init>(II)V

    goto :goto_1

    :cond_2
    new-instance v0, Lio/casper/android/ui/AutoScaleImageView$a;

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v2, v4}, Lio/casper/android/ui/AutoScaleImageView$a;-><init>(II)V

    goto :goto_1

    .line 104
    :pswitch_1
    int-to-float v5, v4

    .line 105
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v3

    div-float/2addr v2, v5

    div-float v2, v0, v2

    .line 106
    cmpl-float v0, v2, v12

    if-lez v0, :cond_3

    new-instance v0, Lio/casper/android/ui/AutoScaleImageView$a;

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v2, v4}, Lio/casper/android/ui/AutoScaleImageView$a;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance v0, Lio/casper/android/ui/AutoScaleImageView$a;

    div-float v2, v5, v2

    float-to-int v2, v2

    invoke-direct {v0, v3, v2}, Lio/casper/android/ui/AutoScaleImageView$a;-><init>(II)V

    goto :goto_1

    .line 121
    :cond_4
    if-nez v2, :cond_6

    move v0, v1

    :goto_2
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    if-eqz v3, :cond_5

    move v1, v3

    .line 126
    :cond_5
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    invoke-virtual {p0, v4}, Lio/casper/android/ui/AutoScaleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const-string v0, "AutoScaleImageView"

    const-string v1, "initLayoutParams [layoutParams.width=%s, layoutParams.height=%s]"

    new-array v2, v11, [Ljava/lang/Object;

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 121
    goto :goto_2

    .line 88
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 196
    and-int/lit8 v0, p0, 0x30

    and-int/lit8 v0, v0, -0x11

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 137
    invoke-direct {p0}, Lio/casper/android/ui/AutoScaleImageView;->getParentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    .line 140
    const-string v0, "AutoScaleImageView"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Attempting to Init Padding, but View has no Parent View"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/ui/AutoScaleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 146
    if-nez v1, :cond_1

    .line 147
    const-string v0, "AutoScaleImageView"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Attempting to Init Padding, but View has no Background Drawable."

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lio/casper/android/ui/AutoScaleImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_7

    .line 153
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 154
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 159
    iget v5, p0, Lio/casper/android/ui/AutoScaleImageView;->mGravity:I

    .line 161
    int-to-float v0, v2

    int-to-float v6, v1

    div-float/2addr v0, v6

    int-to-float v6, v3

    int-to-float v7, v4

    div-float/2addr v6, v7

    div-float/2addr v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    new-instance v0, Lio/casper/android/ui/AutoScaleImageView$a;

    mul-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    float-to-int v1, v1

    invoke-direct {v0, v1, v4}, Lio/casper/android/ui/AutoScaleImageView$a;-><init>(II)V

    .line 163
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 165
    invoke-static {v5}, Lio/casper/android/ui/AutoScaleImageView;->c(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 166
    iget v2, v0, Lio/casper/android/ui/AutoScaleImageView$a;->width:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 171
    :cond_2
    :goto_2
    invoke-static {v5}, Lio/casper/android/ui/AutoScaleImageView;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 172
    iget v0, v0, Lio/casper/android/ui/AutoScaleImageView$a;->height:I

    sub-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 177
    :cond_3
    :goto_3
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lio/casper/android/ui/AutoScaleImageView;->setPadding(IIII)V

    .line 179
    const-string v0, "AutoScaleImageView"

    const-string v2, "initPadding [left=%s, top=%s, right=%s, bottom=%s]"

    new-array v3, v12, [Ljava/lang/Object;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-static {v0, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 161
    :cond_4
    new-instance v0, Lio/casper/android/ui/AutoScaleImageView$a;

    mul-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lio/casper/android/ui/AutoScaleImageView$a;-><init>(II)V

    goto :goto_1

    .line 167
    :cond_5
    invoke-static {v5}, Lio/casper/android/ui/AutoScaleImageView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget v2, v0, Lio/casper/android/ui/AutoScaleImageView$a;->width:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 173
    :cond_6
    invoke-static {v5}, Lio/casper/android/ui/AutoScaleImageView;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    iget v0, v0, Lio/casper/android/ui/AutoScaleImageView$a;->height:I

    sub-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 185
    :cond_7
    invoke-virtual {p0, v8, v8, v8, v8}, Lio/casper/android/ui/AutoScaleImageView;->setPadding(IIII)V

    .line 186
    const-string v0, "AutoScaleImageView"

    const-string v1, "initPadding [left=%s, top=%s, right=%s, bottom=%s]"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 200
    and-int/lit8 v0, p0, 0x50

    and-int/lit8 v0, v0, -0x11

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 1

    .prologue
    .line 204
    and-int/lit8 v0, p0, 0x3

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)Z
    .locals 1

    .prologue
    .line 208
    and-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getParentView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lio/casper/android/ui/AutoScaleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 192
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setGravity(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lio/casper/android/ui/AutoScaleImageView;->mGravity:I

    .line 53
    invoke-direct {p0}, Lio/casper/android/ui/AutoScaleImageView;->b()V

    .line 54
    invoke-direct {p0}, Lio/casper/android/ui/AutoScaleImageView;->a()V

    .line 55
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    invoke-direct {p0}, Lio/casper/android/ui/AutoScaleImageView;->b()V

    .line 48
    invoke-direct {p0}, Lio/casper/android/ui/AutoScaleImageView;->a()V

    .line 49
    return-void
.end method
