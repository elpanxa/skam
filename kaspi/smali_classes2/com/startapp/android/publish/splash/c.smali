.class public Lcom/startapp/android/publish/splash/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/splash/c$1;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    sget-object v1, Lcom/startapp/android/publish/splash/c$1;->a:[I

    invoke-virtual {p1}, Lcom/startapp/android/publish/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/splash/SplashConfig$Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/splash/SplashConfig$Theme;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 58
    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->g(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->f(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->e(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_3
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->d(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_4
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->c(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_5
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->b(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x52

    const/16 v5, 0x3d

    const/4 v4, 0x6

    .line 62
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->h(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    .line 64
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 66
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    return-object v1

    .line 64
    :array_0
    .array-data 4
        -0xdc8366
        -0x782e22
    .end array-data
.end method

.method private static c(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 5

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->h(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    .line 80
    const/16 v0, 0x2f

    const/16 v2, 0x35

    const/16 v3, 0x3f

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    const/16 v2, 0x33

    const/16 v3, 0xb5

    const/16 v4, 0xe5

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    const/16 v2, 0x7a

    const/16 v3, 0x82

    const/16 v4, 0x8b

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    return-object v1
.end method

.method private static d(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0xff

    .line 92
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->h(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 96
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 98
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    const/16 v2, 0xc6

    const/16 v3, 0x97

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    return-object v1

    .line 96
    nop

    :array_0
    .array-data 4
        -0x168d8
        -0xa000
    .end array-data
.end method

.method private static e(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x99

    const/16 v4, 0x33

    .line 112
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->h(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    .line 114
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 116
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    return-object v1

    .line 114
    nop

    :array_0
    .array-data 4
        -0x3b3b3c
        -0x1
    .end array-data
.end method

.method private static f(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x33

    .line 128
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->h(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 132
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 133
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 134
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 136
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    const/16 v2, 0xa2

    const/16 v3, 0xac

    const/16 v4, 0xaf

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    return-object v1

    .line 132
    nop

    :array_0
    .array-data 4
        -0xe0e0f
        -0x5c2b1b
    .end array-data
.end method

.method private static g(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0xd2

    const/16 v4, 0xff

    .line 148
    invoke-static {p0, p1}, Lcom/startapp/android/publish/splash/c;->h(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    .line 150
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 152
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    const/16 v2, 0xd0

    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    return-object v1

    .line 150
    nop

    :array_0
    .array-data 4
        -0xf99356
        -0xe5551d
        -0xf99356
    .end array-data
.end method

.method private static h(Landroid/content/Context;Lcom/startapp/android/publish/splash/SplashConfig;)Landroid/view/View;
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x3

    const/16 v11, 0xe

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 170
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 172
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 174
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    invoke-virtual {v6, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v4, Landroid/graphics/Point;

    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x1c

    invoke-static {p0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 188
    invoke-virtual {p1}, Lcom/startapp/android/publish/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    if-ne v0, v1, :cond_0

    .line 189
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v3

    .line 190
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v2

    .line 191
    const/16 v0, 0x4b

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v1

    .line 192
    const/16 v0, 0x82

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    .line 200
    :goto_0
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p1}, Lcom/startapp/android/publish/splash/SplashConfig;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    const/16 v8, 0x65

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 203
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    invoke-virtual {v8, v9, v9, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    invoke-virtual {v7, v5, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 212
    const-string v3, "Roboto-Regular.ttf"

    invoke-static {p0, v3}, Lcom/startapp/android/publish/h/o;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 213
    invoke-virtual {p1}, Lcom/startapp/android/publish/splash/SplashConfig;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setId(I)V

    .line 215
    const/4 v3, 0x1

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    const/16 v3, 0xff

    const/16 v5, 0xff

    const/16 v8, 0xff

    invoke-static {v3, v5, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 219
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    const/16 v5, 0x65

    invoke-virtual {v3, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    invoke-virtual {v3, v9, v9, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    invoke-virtual {v7, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 240
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 241
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v4, Landroid/graphics/Point;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 245
    invoke-virtual {v8, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    invoke-virtual {v8, v9, v9, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    invoke-static {v9, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 248
    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 249
    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 250
    const/4 v1, 0x0

    const-string v2, "<html>\n<style>\n#fountainG{\nposition:relative;\nwidth:141px;\nheight:17px}\n.fountainG{\nposition:absolute;\ntop:0;\nbackground-color:#000000;\nwidth:18px;\nheight:18px;\n-moz-animation-name:bounce_fountainG;\n-moz-animation-duration:2s;\n-moz-animation-iteration-count:infinite;\n-moz-animation-direction:linear;\n-moz-transform:scale(.3);\n-moz-border-radius:12px;\n-webkit-animation-name:bounce_fountainG;\n-webkit-animation-duration:2s;\n-webkit-animation-iteration-count:infinite;\n-webkit-animation-direction:linear;\n-webkit-transform:scale(.3);\n-webkit-border-radius:12px;\n-ms-animation-name:bounce_fountainG;\n-ms-animation-duration:2s;\n-ms-animation-iteration-count:infinite;\n-ms-animation-direction:linear;\n-ms-transform:scale(.3);\n-ms-border-radius:12px;\n-o-animation-name:bounce_fountainG;\n-o-animation-duration:2s;\n-o-animation-iteration-count:infinite;\n-o-animation-direction:linear;\n-o-transform:scale(.3);\n-o-border-radius:12px;\nanimation-name:bounce_fountainG;\nanimation-duration:2s;\nanimation-iteration-count:infinite;\nanimation-direction:linear;\ntransform:scale(.3);\nborder-radius:12px;\n}\n#fountainG_1{\nleft:0;\n-moz-animation-delay:0.8s;\n-webkit-animation-delay:0.8s;\n-ms-animation-delay:0.8s;\n-o-animation-delay:0.8s;\nanimation-delay:0.8s;\n}\n#fountainG_2{\nleft:18px;\n-moz-animation-delay:1s;\n-webkit-animation-delay:1s;\n-ms-animation-delay:1s;\n-o-animation-delay:1s;\nanimation-delay:1s;\n}\n#fountainG_3{\nleft:35px;\n-moz-animation-delay:1.2s;\n-webkit-animation-delay:1.2s;\n-ms-animation-delay:1.2s;\n-o-animation-delay:1.2s;\nanimation-delay:1.2s;\n}\n#fountainG_4{\nleft:53px;\n-moz-animation-delay:1.4s;\n-webkit-animation-delay:1.4s;\n-ms-animation-delay:1.4s;\n-o-animation-delay:1.4s;\nanimation-delay:1.4s;\n}\n#fountainG_5{\nleft:71px;\n-moz-animation-delay:1.6s;\n-webkit-animation-delay:1.6s;\n-ms-animation-delay:1.6s;\n-o-animation-delay:1.6s;\nanimation-delay:1.6s;\n}\n#fountainG_6{\nleft:88px;\n-moz-animation-delay:1.8s;\n-webkit-animation-delay:1.8s;\n-ms-animation-delay:1.8s;\n-o-animation-delay:1.8s;\nanimation-delay:1.8s;\n}\n#fountainG_7{\nleft:106px;\n-moz-animation-delay:2s;\n-webkit-animation-delay:2s;\n-ms-animation-delay:2s;\n-o-animation-delay:2s;\nanimation-delay:2s;\n}\n#fountainG_8{\nleft:123px;\n-moz-animation-delay:2.2s;\n-webkit-animation-delay:2.2s;\n-ms-animation-delay:2.2s;\n-o-animation-delay:2.2s;\nanimation-delay:2.2s;\n}\n@-moz-keyframes bounce_fountainG{\n0%{\n-moz-transform:scale(1);\nbackground-color:#000000;\n}\n100%{\n-moz-transform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n@-webkit-keyframes bounce_fountainG{\n0%{\n-webkit-transform:scale(1);\nbackground-color:#000000;\n}\n100%{\n-webkit-transform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n@-ms-keyframes bounce_fountainG{\n0%{\n-ms-transform:scale(1);\nbackground-color:#000000;\n}\n100%{\n-ms-transform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n@-o-keyframes bounce_fountainG{\n0%{\n-o-transform:scale(1);\nbackground-color:#000000;\n}\n100%{\n-o-transform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n@keyframes bounce_fountainG{\n0%{\ntransform:scale(1);\nbackground-color:#000000;\n}\n100%{\ntransform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n</style>\n<body style=\"margin:0;padding:0\">\n<div id=\"fountainG\">\n<div id=\"fountainG_1\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_2\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_3\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_4\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_5\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_6\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_7\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_8\" class=\"fountainG\">\n</div>\n</div>\n</body>\n</html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v7, v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 255
    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 257
    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 258
    const/16 v1, 0xd0

    const/16 v2, 0xd2

    const/16 v3, 0xd2

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 260
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 263
    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 264
    const/16 v2, 0x66

    invoke-virtual {v1, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 265
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 266
    invoke-virtual {v7, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    return-object v6

    .line 194
    :cond_0
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v3

    .line 195
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v2

    .line 196
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v1

    .line 197
    invoke-static {p0, v13}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    goto/16 :goto_0
.end method
