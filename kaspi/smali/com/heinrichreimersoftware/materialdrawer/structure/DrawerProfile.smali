.class public Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
.super Ljava/lang/Object;
.source "DrawerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;,
        Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;
    }
.end annotation


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mDescription:Ljava/lang/String;

.field private mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

.field private mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

.field private mId:J

.field private mName:Ljava/lang/String;

.field private mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mId:J

    .line 38
    iput-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public attachTo(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 344
    return-object p0
.end method

.method public detach()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 352
    return-object p0
.end method

.method public getAvatar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawerTheme()Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    return-object v0
.end method

.method public hasAvatar()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBackground()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDescription:Ljava/lang/String;

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

.method public hasDrawerTheme()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mName:Ljava/lang/String;

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

.method public hasOnProfileClickListener()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyDataChanged()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 359
    :cond_0
    return-void
.end method

.method public removeAvatar()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 166
    return-object p0
.end method

.method public removeBackground()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 215
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 216
    return-object p0
.end method

.method public removeDescription()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDescription:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 294
    return-object p0
.end method

.method public removeName()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mName:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 255
    return-object p0
.end method

.method public removeOnProfileClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    .line 332
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 333
    return-object p0
.end method

.method public resetDrawerTheme(Landroid/content/Context;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    invoke-direct {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 63
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 64
    return-object p0
.end method

.method public setAvatar(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 121
    return-object p0
.end method

.method public setAvatar(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 110
    return-object p0
.end method

.method public setBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 188
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 189
    return-object p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 178
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDescription:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 267
    return-object p0
.end method

.method public setDrawerTheme(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mDrawerTheme:Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;

    .line 54
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 55
    return-object p0
.end method

.method public setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 1

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mId:J

    .line 89
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mName:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 228
    return-object p0
.end method

.method public setOnProfileClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->mOnClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileClickListener;

    .line 305
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->notifyDataChanged()V

    .line 306
    return-object p0
.end method

.method public setRoundedAvatar(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->setAvatar(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    move-result-object v0

    return-object v0
.end method

.method public setRoundedAvatar(Landroid/graphics/drawable/BitmapDrawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/drawable/RoundedAvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->setAvatar(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    move-result-object v0

    return-object v0
.end method
