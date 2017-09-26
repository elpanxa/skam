.class public Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
.super Ljava/lang/Object;
.source "DrawerItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final AVATAR:I = 0x2

.field public static final ICON:I = 0x1

.field public static final SINGLE_LINE:I = 0x3

.field public static final SMALL_AVATAR:I = 0x3

.field public static final THREE_LINE:I = 0x5

.field public static final TWO_LINE:I = 0x4


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

.field private mId:J

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mImageMode:I

.field private mIsHeader:Z

.field private mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

.field private mTextMode:I

.field private mTextPrimary:Ljava/lang/String;

.field private mTextSecondary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mIsHeader:Z

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mId:J

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 48
    iput v2, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImageMode:I

    .line 52
    iput v2, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextMode:I

    return-void
.end method


# virtual methods
.method public attachTo(Landroid/widget/ArrayAdapter;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;",
            ">;)",
            "Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;"
        }
    .end annotation

    .prologue
    .line 489
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 490
    return-object p0
.end method

.method public detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 498
    return-object p0
.end method

.method public getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mId:J

    return-wide v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImageMode:I

    return v0
.end method

.method public getOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    return-object v0
.end method

.method public getTextMode()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextMode:I

    return v0
.end method

.method public getTextPrimary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextPrimary:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSecondary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextSecondary:Ljava/lang/String;

    return-object v0
.end method

.method public hasDrawerTheme()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageMode()Z
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImageMode:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnItemClickListener()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextMode()Z
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextMode:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextPrimary()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextPrimary:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextPrimary:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextSecondary()Z
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextSecondary:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextSecondary:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDivider()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->isHeader()Z

    move-result v0

    return v0
.end method

.method public isHeader()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mIsHeader:Z

    return v0
.end method

.method protected notifyDataChanged()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 505
    :cond_0
    return-void
.end method

.method public removeImage()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 261
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 262
    return-object p0
.end method

.method public removeOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 478
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 479
    return-object p0
.end method

.method public removeTextPrimary()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextPrimary:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 345
    return-object p0
.end method

.method public removeTextSecondary()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextSecondary:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 397
    return-object p0
.end method

.method public resetDrawerTheme(Landroid/content/Context;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-direct {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 75
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 76
    return-object p0
.end method

.method public resetImageMode()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImageMode:I

    .line 304
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 305
    return-object p0
.end method

.method public resetTextMode()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x3

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextMode:I

    .line 439
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 440
    return-object p0
.end method

.method public setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 66
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 67
    return-object p0
.end method

.method public setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mId:J

    .line 143
    return-object p0
.end method

.method public setImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Landroid/content/Context;Landroid/graphics/Bitmap;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p3}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 176
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 177
    return-object p0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-virtual {p0, p2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImageMode(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 165
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 166
    return-object p0
.end method

.method public setImageMode(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image mode must be either ICON or AVATAR."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mImageMode:I

    .line 276
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 277
    return-object p0
.end method

.method public setIsDivider(Z)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setIsHeader(Z)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 122
    return-object p0
.end method

.method public setIsHeader(Z)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mIsHeader:Z

    .line 101
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 102
    return-object p0
.end method

.method public setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    .line 451
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 452
    return-object p0
.end method

.method public setRoundedImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public setRoundedImage(Landroid/content/Context;Landroid/graphics/Bitmap;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p3}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public setRoundedImage(Landroid/graphics/drawable/BitmapDrawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public setRoundedImage(Landroid/graphics/drawable/BitmapDrawable;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public setTextMode(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 2

    .prologue
    .line 407
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image mode must be either SINGLE_LINE, TWO_LINE or THREE_LINE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextMode:I

    .line 411
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 412
    return-object p0
.end method

.method public setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextPrimary:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 317
    return-object p0
.end method

.method public setTextSecondary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextSecondary(Ljava/lang/String;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 369
    return-object p0
.end method

.method public setTextSecondary(Ljava/lang/String;I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->mTextSecondary:Ljava/lang/String;

    .line 357
    invoke-virtual {p0, p2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextMode(I)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 358
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->notifyDataChanged()V

    .line 359
    return-object p0
.end method
