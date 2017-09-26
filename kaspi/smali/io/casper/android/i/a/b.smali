.class public Lio/casper/android/i/a/b;
.super Landroid/support/v4/app/Fragment;
.source "GeoFilterFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# static fields
.field private static final TAG:Ljava/lang/String; = "GeoFilterFragment"


# instance fields
.field private mAutoScaleImageView:Lio/casper/android/ui/AutoScaleImageView;

.field private mContext:Landroid/content/Context;

.field private mGeoFilter:Lio/casper/android/n/a/c/b/m;

.field private mPicasso:Lcom/squareup/picasso/Picasso;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    return-void
.end method

.method public static b(Lio/casper/android/n/a/c/b/m;)Lio/casper/android/i/a/b;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lio/casper/android/i/a/b;

    invoke-direct {v0}, Lio/casper/android/i/a/b;-><init>()V

    .line 52
    invoke-virtual {v0, p0}, Lio/casper/android/i/a/b;->a(Lio/casper/android/n/a/c/b/m;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public a(Lio/casper/android/n/a/c/b/m;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lio/casper/android/i/a/b;->mGeoFilter:Lio/casper/android/n/a/c/b/m;

    .line 48
    return-void
.end method

.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 180
    const-string v0, "GeoFilterFragment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onBitmapFailed"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    const-string v0, "GeoFilterFragment"

    const-string v3, "onBitmapLoaded[start]"

    invoke-static {v0, v3}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "GeoFilterFragment"

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "onBitmapLoaded"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lio/casper/android/i/a/b;->mAutoScaleImageView:Lio/casper/android/ui/AutoScaleImageView;

    invoke-virtual {v0, p1}, Lio/casper/android/ui/AutoScaleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v0, p0, Lio/casper/android/i/a/b;->mGeoFilter:Lio/casper/android/n/a/c/b/m;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lio/casper/android/i/a/b;->mGeoFilter:Lio/casper/android/n/a/c/b/m;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/m;->c()Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 110
    const-string v0, "GeoFilterFragment"

    const-string v5, "GeoFilterPosition=%s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v0, v5, v6}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    const-string v0, "GeoFilterFragment"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Scale=SCALE_ASPECT_FILL"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lio/casper/android/i/a/b;->mAutoScaleImageView:Lio/casper/android/ui/AutoScaleImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Lio/casper/android/ui/AutoScaleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 112
    :sswitch_0
    const-string v5, "SCALE_ASPECT_FILL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v5, "SCALE_TO_FILL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v5, "SCALE_ASPECT_FIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "TOP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "TOP_LEFT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "TOP_RIGHT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "BOTTOM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v5, "BOTTOM_LEFT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v5, "BOTTOM_RIGHT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    .line 121
    :pswitch_1
    const-string v0, "GeoFilterFragment"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Scale=SCALE_TO_FILL"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lio/casper/android/i/a/b;->mAutoScaleImageView:Lio/casper/android/ui/AutoScaleImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Lio/casper/android/ui/AutoScaleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 127
    :pswitch_2
    const-string v0, "GeoFilterFragment"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Scale=SCALE_ASPECT_FIT"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lio/casper/android/i/a/b;->mAutoScaleImageView:Lio/casper/android/ui/AutoScaleImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Lio/casper/android/ui/AutoScaleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 133
    :pswitch_3
    const-string v0, "GeoFilterFragment"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Position=POSITION_TOP"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x31

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 139
    :pswitch_4
    const-string v0, "GeoFilterFragment"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Position=POSITION_TOP_LEFT"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x33

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 145
    :pswitch_5
    const-string v0, "GeoFilterFragment"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Position=POSITION_TOP_RIGHT"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x35

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 151
    :pswitch_6
    const-string v0, "GeoFilterFragment"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Position=POSITION_BOTTOM"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x51

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 157
    :pswitch_7
    const-string v0, "GeoFilterFragment"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Position=POSITION_BOTTOM_LEFT"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x53

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 163
    :pswitch_8
    const-string v0, "GeoFilterFragment"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Position=POSITION_BOTTOM_RIGHT"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x55

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 174
    :cond_1
    const-string v0, "GeoFilterFragment"

    const-string v1, "onBitmapLoaded[end]"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    .line 112
    :sswitch_data_0
    .sparse-switch
        -0x1c5a098e -> :sswitch_5
        -0x92efb2f -> :sswitch_4
        -0x90bea8b -> :sswitch_0
        0x14535 -> :sswitch_3
        0x168fdeb2 -> :sswitch_1
        0x5b6c2ee8 -> :sswitch_8
        0x5dc6e59b -> :sswitch_7
        0x6b1021bf -> :sswitch_2
        0x75208e2b -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    const-string v0, "GeoFilterFragment"

    const-string v1, "onCreateView[start]"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lio/casper/android/i/a/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/a/b;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/a/b;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 79
    const v0, 0x7f03003d

    invoke-virtual {p1, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/a/b;->mRootView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRootView:Landroid/view/View;

    const v1, 0x7f0c00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lio/casper/android/i/a/b;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 82
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRootView:Landroid/view/View;

    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/AutoScaleImageView;

    iput-object v0, p0, Lio/casper/android/i/a/b;->mAutoScaleImageView:Lio/casper/android/ui/AutoScaleImageView;

    .line 84
    iget-object v0, p0, Lio/casper/android/i/a/b;->mAutoScaleImageView:Lio/casper/android/ui/AutoScaleImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lio/casper/android/ui/AutoScaleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 86
    iget-object v0, p0, Lio/casper/android/i/a/b;->mGeoFilter:Lio/casper/android/n/a/c/b/m;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lio/casper/android/i/a/b;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/i/a/b;->mGeoFilter:Lio/casper/android/n/a/c/b/m;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget-object v1, Lcom/squareup/picasso/MemoryPolicy;->NO_CACHE:Lcom/squareup/picasso/MemoryPolicy;

    new-array v2, v2, [Lcom/squareup/picasso/MemoryPolicy;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 61
    const-string v0, "GeoFilterFragment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onDestroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lio/casper/android/i/a/b;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lio/casper/android/util/a;->a(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 69
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 185
    const-string v0, "GeoFilterFragment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPrepareLoad"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-void
.end method
