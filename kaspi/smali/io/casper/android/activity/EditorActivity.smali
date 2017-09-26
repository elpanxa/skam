.class public Lio/casper/android/activity/EditorActivity;
.super Lio/casper/android/activity/a/a;
.source "EditorActivity.java"


# static fields
.field private static final ACTION_CHOOSE_FONT:I = 0x3e9

.field private static final ACTION_CHOOSE_IMOJI:I = 0x3ea

.field private static final ACTION_CHOOSE_LOCATION:I = 0x3eb

.field private static final ACTION_CHOOSE_STICKER:I = 0x3e8

.field public static final KEY_ASSET_EMOJI_ANDROID_PNG:Ljava/lang/String; = "emoji_android_png"

.field public static final KEY_ASSET_EMOJI_APPLE_PNG:Ljava/lang/String; = "emoji_apple_png"

.field public static final KEY_ASSET_ZIPPED_EMOJI_TWITTER_PNG:Ljava/lang/String; = "emoji_twitter_png.zip"

.field public static final KEY_ASSET_ZIPPED_EMOJI_TWITTER_SVG:Ljava/lang/String; = "emoji_twitter_svg.zip"

.field public static final KEY_FILE:Ljava/lang/String; = "file"

.field public static final KEY_FILE_VIDEO_CAPTION:Ljava/lang/String; = "file_video_caption"

.field public static final KEY_FRONT_CAM:Ljava/lang/String; = "front_cam"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_TYPE_BLANK:Ljava/lang/String; = "blank"

.field public static final KEY_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final KEY_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final TAG:Ljava/lang/String; = "EditorActivity"


# instance fields
.field private mAddAndroidEmojiButton:Landroid/widget/ImageButton;

.field private mAddAppleEmojiButton:Landroid/widget/ImageButton;

.field private mAddImojiButton:Landroid/widget/ImageButton;

.field private mAddTwitterEmojiButton:Landroid/widget/ImageButton;

.field private mAddonManager:Lio/casper/android/l/b;

.field private mAndroidEmojiPickerFragment:Lio/casper/android/i/c;

.field private mAppleEmojiPickerFragment:Lio/casper/android/i/c;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBottomToolbar:Landroid/support/v7/widget/Toolbar;

.field private mBwFilterButton:Landroid/widget/ImageView;

.field private mCanvasFrame:Landroid/widget/FrameLayout;

.field private mCaptionButton:Landroid/widget/ImageButton;

.field private mCaptionFrame:Landroid/widget/FrameLayout;

.field private mCaptionSizeContainer:Landroid/widget/LinearLayout;

.field private mCaptionSizeSeekBar:Landroid/widget/SeekBar;

.field private mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

.field private mCaptionType:I

.field private mCaptionView:Lio/casper/android/ui/a;

.field private mChooseLocationButton:Landroid/widget/ImageButton;

.field private mCurrentToolbar:Landroid/support/v7/widget/Toolbar;

.field private mDecreaseCaptionButton:Landroid/widget/ImageButton;

.field private mDrawingButton:Landroid/widget/ImageButton;

.field private mDrawingFrame:Landroid/widget/FrameLayout;

.field private mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

.field private mDrawingView:Lio/casper/android/ui/d;

.field private mExitCaptionButton:Landroid/widget/ImageButton;

.field private mExitDrawingButton:Landroid/widget/ImageButton;

.field private mExitStickerButton:Landroid/widget/ImageButton;

.field private mFilterPager:Landroid/support/v4/view/ViewPager;

.field private mFilterPagerAdapter:Lio/casper/android/a/d;

.field private mFilterPreviewViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterToolbar:Landroid/support/v7/widget/Toolbar;

.field private mFlipHorizontalButton:Landroid/widget/ImageButton;

.field private mFlipVerticalButton:Landroid/widget/ImageButton;

.field private mFragmentContainer:Landroid/widget/FrameLayout;

.field private mGeoFiltersTable:Lio/casper/android/n/c/a/e;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mImojiPickerFragment:Lio/casper/android/i/j;

.field private mIncreaseCaptionButton:Landroid/widget/ImageButton;

.field private mInstasnapFilterButton:Landroid/widget/ImageView;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mInvertFilterButton:Landroid/widget/ImageView;

.field private mLocationManager:Lio/casper/android/l/m;

.field private mMediaFile:Ljava/io/File;

.field private mMediaOverlayFile:Ljava/io/File;

.field private mMediaType:Ljava/lang/String;

.field private mNoneFilterButton:Landroid/widget/ImageView;

.field private mPalleteCaptionButton:Landroid/widget/ImageButton;

.field private mPalleteDrawingButton:Landroid/widget/ImageButton;

.field private mPicasso:Lcom/squareup/picasso/Picasso;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mRedoDrawingButton:Landroid/widget/ImageButton;

.field private mRemoveStickerButton:Landroid/widget/ImageButton;

.field private mResizeCaptionButton:Landroid/widget/ImageButton;

.field private mRotateButton:Landroid/widget/ImageButton;

.field private mRotateCaptionButton:Landroid/widget/ImageButton;

.field private mSaveButton:Landroid/widget/ImageButton;

.field private mSavedMediaManager:Lio/casper/android/l/q;

.field private mSendButton:Landroid/widget/ImageButton;

.field private mSepiaFilterButton:Landroid/widget/ImageView;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mShowFiltersButton:Landroid/widget/ImageButton;

.field private mSketchFilterButton:Landroid/widget/ImageView;

.field private mSnapchatManager:Lio/casper/android/l/t;

.field private mStickerButton:Landroid/widget/ImageButton;

.field private mStickerFrame:Landroid/widget/FrameLayout;

.field private mStickerToolbar:Landroid/support/v7/widget/Toolbar;

.field private mStickerView:Lio/casper/android/ui/a/a;

.field private mStretchButton:Landroid/widget/ImageButton;

.field private mStretched:Z

.field private mTimeButton:Landroid/widget/ImageButton;

.field private mTimeText:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mTwitterEmojiPickerFragment:Lio/casper/android/i/c;

.field private mTypeCaptionButton:Landroid/widget/ImageButton;

.field private mUndoDrawingButton:Landroid/widget/ImageButton;

.field private mUsedFrontCam:Z

.field private mVideoDuration:I

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionType:I

    return-void
.end method

.method static synthetic A(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic B(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mShowFiltersButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method static synthetic D(Lio/casper/android/activity/EditorActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mMediaType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    return-object v0
.end method

.method static synthetic F(Lio/casper/android/activity/EditorActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCanvasFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic G(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/t;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSnapchatManager:Lio/casper/android/l/t;

    return-object v0
.end method

.method static synthetic H(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/k;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    return-object v0
.end method

.method static synthetic I(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/r;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSettingsManager:Lio/casper/android/l/r;

    return-object v0
.end method

.method static synthetic J(Lio/casper/android/activity/EditorActivity;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoDuration:I

    return v0
.end method

.method static synthetic K(Lio/casper/android/activity/EditorActivity;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lio/casper/android/activity/EditorActivity;->f()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/EditorActivity;I)I
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lio/casper/android/activity/EditorActivity;->mVideoDuration:I

    return p1
.end method

.method static synthetic a(Lio/casper/android/activity/EditorActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lio/casper/android/activity/EditorActivity;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1984
    if-eqz p1, :cond_0

    .line 1985
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/activity/EditorActivity$51;

    invoke-direct {v1, p0, p1}, Lio/casper/android/activity/EditorActivity$51;-><init>(Lio/casper/android/activity/EditorActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1992
    :cond_0
    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/EditorActivity;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lio/casper/android/activity/EditorActivity;->mStretched:Z

    return p1
.end method

.method static synthetic b(Lio/casper/android/activity/EditorActivity;I)I
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lio/casper/android/activity/EditorActivity;->mCaptionType:I

    return p1
.end method

.method static synthetic b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionView:Lio/casper/android/ui/a;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/EditorActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lio/casper/android/activity/EditorActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic c(Lio/casper/android/activity/EditorActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mMediaFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a/a;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    return-object v0
.end method

.method private d()V
    .locals 9

    .prologue
    const/16 v1, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1709
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1711
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1713
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mNoneFilterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1716
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mInstasnapFilterButton:Landroid/widget/ImageView;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mBwFilterButton:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mSepiaFilterButton:Landroid/widget/ImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mInvertFilterButton:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mSketchFilterButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1724
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1725
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1727
    new-instance v4, Lcom/snapchat/android/util/PhotoEffectTask;

    iget-object v5, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    new-instance v6, Lio/casper/android/activity/EditorActivity$48;

    invoke-direct {v6, p0, v1, v2}, Lio/casper/android/activity/EditorActivity$48;-><init>(Lio/casper/android/activity/EditorActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-direct {v4, v5, v0, v6}, Lcom/snapchat/android/util/PhotoEffectTask;-><init>(Landroid/content/Context;ILcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;)V

    .line 1737
    new-array v0, v8, [Landroid/graphics/Bitmap;

    aput-object v2, v0, v7

    invoke-virtual {v4, v0}, Lcom/snapchat/android/util/PhotoEffectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1766
    :cond_0
    return-void
.end method

.method static synthetic e(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTypeCaptionButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 1996
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPagerAdapter:Lio/casper/android/a/d;

    invoke-virtual {v0}, Lio/casper/android/a/d;->a()V

    .line 1998
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPagerAdapter:Lio/casper/android/a/d;

    new-instance v1, Lio/casper/android/i/d;

    invoke-direct {v1}, Lio/casper/android/i/d;-><init>()V

    invoke-virtual {v0, v1}, Lio/casper/android/a/d;->a(Landroid/support/v4/app/Fragment;)V

    .line 2000
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddonManager:Lio/casper/android/l/b;

    invoke-virtual {v0}, Lio/casper/android/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    invoke-virtual {v0}, Lio/casper/android/l/q;->e()Ljava/util/List;

    move-result-object v0

    .line 2003
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2004
    iget-object v2, p0, Lio/casper/android/activity/EditorActivity;->mFilterPagerAdapter:Lio/casper/android/a/d;

    invoke-static {v0}, Lio/casper/android/i/a/a;->b(Ljava/io/File;)Lio/casper/android/i/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/casper/android/a/d;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 2009
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mGeoFiltersTable:Lio/casper/android/n/c/a/e;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/e;->e()Ljava/util/List;

    move-result-object v0

    .line 2010
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/m;

    .line 2011
    iget-object v2, p0, Lio/casper/android/activity/EditorActivity;->mFilterPagerAdapter:Lio/casper/android/a/d;

    invoke-static {v0}, Lio/casper/android/i/a/b;->b(Lio/casper/android/n/a/c/b/m;)Lio/casper/android/i/a/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/casper/android/a/d;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 2014
    :cond_1
    return-void
.end method

.method static synthetic g(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/activity/EditorActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic j(Lio/casper/android/activity/EditorActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lio/casper/android/activity/EditorActivity;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lio/casper/android/activity/EditorActivity;->mStretched:Z

    return v0
.end method

.method static synthetic l(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStretchButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic m(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic o(Lio/casper/android/activity/EditorActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionSizeContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic p(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic q(Lio/casper/android/activity/EditorActivity;)I
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionType:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/casper/android/activity/EditorActivity;->mCaptionType:I

    return v0
.end method

.method static synthetic r(Lio/casper/android/activity/EditorActivity;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionType:I

    return v0
.end method

.method static synthetic s(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/d;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingView:Lio/casper/android/ui/d;

    return-object v0
.end method

.method static synthetic t(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/i/j;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mImojiPickerFragment:Lio/casper/android/i/j;

    return-object v0
.end method

.method static synthetic u(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/i/c;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAndroidEmojiPickerFragment:Lio/casper/android/i/c;

    return-object v0
.end method

.method static synthetic v(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/i/c;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAppleEmojiPickerFragment:Lio/casper/android/i/c;

    return-object v0
.end method

.method static synthetic w(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/i/c;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTwitterEmojiPickerFragment:Lio/casper/android/i/c;

    return-object v0
.end method

.method static synthetic x(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRemoveStickerButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic y(Lio/casper/android/activity/EditorActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic z(Lio/casper/android/activity/EditorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 729
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lio/casper/android/activity/EditorActivity$54;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$54;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 763
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 1917
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1937
    :goto_0
    return-void

    .line 1921
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/PhotoEffectTask;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lio/casper/android/activity/EditorActivity$50;

    invoke-direct {v2, p0}, Lio/casper/android/activity/EditorActivity$50;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/snapchat/android/util/PhotoEffectTask;-><init>(Landroid/content/Context;ILcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;)V

    .line 1935
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/PhotoEffectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 1941
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1942
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1944
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1945
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1946
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1951
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1953
    return-void

    .line 1948
    :cond_0
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v2, v1, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1949
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/Toolbar;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1770
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity;->mCurrentToolbar:Landroid/support/v7/widget/Toolbar;

    .line 1801
    iget-object v4, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v0, p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 1802
    iget-object v4, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 1803
    iget-object v4, p0, Lio/casper/android/activity/EditorActivity;->mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 1804
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 1806
    iget-object v2, p0, Lio/casper/android/activity/EditorActivity;->mCaptionView:Lio/casper/android/ui/a;

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v0, :cond_4

    move v0, v3

    :goto_3
    invoke-virtual {v2, v0}, Lio/casper/android/ui/a;->setEnabled(Z)V

    .line 1807
    iget-object v2, p0, Lio/casper/android/activity/EditorActivity;->mDrawingView:Lio/casper/android/ui/d;

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v0, :cond_5

    move v0, v3

    :goto_4
    invoke-virtual {v2, v0}, Lio/casper/android/ui/d;->setDrawingEnabled(Z)V

    .line 1808
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v2, :cond_6

    :goto_5
    invoke-virtual {v0, v3}, Lio/casper/android/ui/a/a;->setEnabled(Z)V

    .line 1810
    return-void

    .line 1801
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1802
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1803
    goto :goto_2

    :cond_4
    move v0, v1

    .line 1806
    goto :goto_3

    :cond_5
    move v0, v1

    .line 1807
    goto :goto_4

    :cond_6
    move v3, v1

    .line 1808
    goto :goto_5
.end method

.method public a(Lcom/imojiapp/imoji/sdk/Imoji;)V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    invoke-virtual {v0, p1}, Lio/casper/android/ui/a/a;->a(Lcom/imojiapp/imoji/sdk/Imoji;)V

    .line 712
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 770
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$55;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$55;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$2;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$2;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$3;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$3;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStretchButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$4;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$4;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$5;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$5;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFlipVerticalButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$6;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$6;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFlipHorizontalButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$7;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$7;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mExitCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$8;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$8;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTypeCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$9;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$9;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRotateCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$10;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$10;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mPalleteCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$11;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$11;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mIncreaseCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$13;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$13;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1018
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mIncreaseCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$14;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$14;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1029
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDecreaseCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$15;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$15;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1036
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDecreaseCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$16;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$16;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1047
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mResizeCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$17;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$17;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionSizeSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1059
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionSizeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mCaptionView:Lio/casper/android/ui/a;

    invoke-virtual {v1}, Lio/casper/android/ui/a;->getTextSize()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1061
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lio/casper/android/activity/EditorActivity$18;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$18;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1084
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mExitDrawingButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$19;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$19;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mPalleteDrawingButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$20;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$20;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mUndoDrawingButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$21;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$21;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRedoDrawingButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$22;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$22;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mUndoDrawingButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$24;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$24;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1165
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mExitStickerButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$25;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$25;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddImojiButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$26;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$26;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddAndroidEmojiButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$27;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$27;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddAppleEmojiButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$28;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$28;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddTwitterEmojiButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$29;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$29;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRemoveStickerButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$30;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$30;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRemoveStickerButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$31;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$31;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1235
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    new-instance v1, Lio/casper/android/activity/EditorActivity$32;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$32;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a/a;->setChangeListener(Lio/casper/android/ui/a/a$a;)V

    .line 1242
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a;->invalidate()V

    .line 1245
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionFrame:Landroid/widget/FrameLayout;

    new-instance v1, Lio/casper/android/activity/EditorActivity$33;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$33;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1260
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$35;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$35;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mShowFiltersButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$36;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$36;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1286
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mChooseLocationButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$37;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$37;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1295
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSaveButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$38;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$38;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSendButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/EditorActivity$39;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$39;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1649
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mNoneFilterButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/activity/EditorActivity$40;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$40;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1657
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mInstasnapFilterButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/activity/EditorActivity$41;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$41;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1665
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBwFilterButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/activity/EditorActivity$42;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$42;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1673
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSepiaFilterButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/activity/EditorActivity$43;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$43;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1681
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mInvertFilterButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/activity/EditorActivity$44;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$44;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1689
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSketchFilterButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/activity/EditorActivity$46;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$46;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1697
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionView:Lio/casper/android/ui/a;

    new-instance v1, Lio/casper/android/activity/EditorActivity$47;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$47;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a;->setKeyboardCloseListener(Lio/casper/android/ui/a$a;)V

    .line 1705
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 1957
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1958
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1960
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1961
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1962
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1964
    :cond_0
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v2, v1, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1965
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1967
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1969
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 1980
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1981
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1814
    if-ne p2, v2, :cond_0

    .line 1815
    packed-switch p1, :pswitch_data_0

    .line 1913
    :cond_0
    :goto_0
    return-void

    .line 1821
    :pswitch_0
    :try_start_0
    const-string v0, "imoji"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1822
    if-eqz v0, :cond_1

    .line 1823
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/imojiapp/imoji/sdk/Imoji;

    invoke-virtual {v5, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji;

    .line 1824
    iget-object v5, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    invoke-virtual {v5, v0}, Lio/casper/android/ui/a/a;->a(Lcom/imojiapp/imoji/sdk/Imoji;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1829
    :cond_1
    :goto_1
    new-instance v0, Lio/casper/android/b/a/e;

    iget-object v5, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lio/casper/android/b/a/e;-><init>(Landroid/content/Context;)V

    const-string v5, "Add"

    invoke-virtual {v0, v5}, Lio/casper/android/b/a/e;->b(Ljava/lang/String;)Lio/casper/android/b/a/e;

    move-result-object v5

    .line 1831
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mMediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v0, v2

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 1850
    :goto_3
    invoke-static {v5}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto :goto_0

    .line 1831
    :sswitch_0
    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :sswitch_1
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :sswitch_2
    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    .line 1834
    :pswitch_1
    const-string v0, "Photo"

    invoke-virtual {v5, v0}, Lio/casper/android/b/a/e;->a(Ljava/lang/String;)Lio/casper/android/b/a/e;

    goto :goto_3

    .line 1839
    :pswitch_2
    const-string v0, "Video"

    invoke-virtual {v5, v0}, Lio/casper/android/b/a/e;->a(Ljava/lang/String;)Lio/casper/android/b/a/e;

    goto :goto_3

    .line 1844
    :pswitch_3
    const-string v0, "Blank"

    invoke-virtual {v5, v0}, Lio/casper/android/b/a/e;->a(Ljava/lang/String;)Lio/casper/android/b/a/e;

    goto :goto_3

    .line 1858
    :pswitch_4
    const-string v0, "font"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    :try_start_1
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1865
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mCaptionView:Lio/casper/android/ui/a;

    invoke-virtual {v1, v0}, Lio/casper/android/ui/a;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1878
    :pswitch_5
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1879
    invoke-virtual {v0, v3, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1880
    const v2, 0x7f0700bb

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1881
    const v2, 0x7f070038

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1882
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 1883
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 1885
    const-string v2, "latitude"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1886
    const-string v5, "longitude"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1888
    iget-object v6, p0, Lio/casper/android/activity/EditorActivity;->mLocationManager:Lio/casper/android/l/m;

    invoke-virtual {v6, v2}, Lio/casper/android/l/m;->a(Ljava/lang/String;)V

    .line 1889
    iget-object v6, p0, Lio/casper/android/activity/EditorActivity;->mLocationManager:Lio/casper/android/l/m;

    invoke-virtual {v6, v5}, Lio/casper/android/l/m;->b(Ljava/lang/String;)V

    .line 1891
    const-string v6, "EditorActivity"

    const-string v7, "Received Location from LocationPicker latitude=%s longitude=%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v5, v4, v3

    invoke-static {v6, v7, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1893
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mLocationManager:Lio/casper/android/l/m;

    new-instance v2, Lio/casper/android/activity/EditorActivity$49;

    invoke-direct {v2, p0, v0}, Lio/casper/android/activity/EditorActivity$49;-><init>(Lio/casper/android/activity/EditorActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1, v2}, Lio/casper/android/l/m;->a(Lio/casper/android/l/m$a;)V

    goto/16 :goto_0

    .line 1827
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 1815
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1831
    :sswitch_data_0
    .sparse-switch
        0x5979154 -> :sswitch_2
        0x5faa95b -> :sswitch_0
        0x6b0147b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 242
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionSizeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 215
    :goto_1
    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionSizeContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 214
    goto :goto_1

    .line 220
    :cond_2
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCurrentToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCurrentToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v2, :cond_3

    .line 221
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    goto :goto_0

    .line 225
    :cond_3
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    const v2, 0x7f070190

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 227
    const v2, 0x7f0700ca

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 228
    const v2, 0x7f070049

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 229
    const v2, 0x7f070036

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 230
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 231
    new-instance v1, Lio/casper/android/activity/EditorActivity$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$1;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 240
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 255
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 257
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionView:Lio/casper/android/ui/a;

    new-instance v1, Lio/casper/android/activity/EditorActivity$12;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$12;-><init>(Lio/casper/android/activity/EditorActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/ui/a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a;->a()V

    .line 266
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 303
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 304
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 307
    :cond_0
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->setContentView(I)V

    .line 309
    const-string v0, "EditorActivity"

    const-string v1, "onCreate[start]"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mHandler:Landroid/os/Handler;

    .line 313
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 315
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaType:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 318
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0701a1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->finish()V

    goto :goto_0

    .line 324
    :cond_1
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    new-instance v1, Ljava/io/File;

    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaFile:Ljava/io/File;

    .line 327
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07006d

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 331
    :cond_2
    const-string v1, "file_video_caption"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    new-instance v1, Ljava/io/File;

    const-string v2, "file_video_caption"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaOverlayFile:Ljava/io/File;

    .line 337
    :cond_3
    const-string v1, "front_cam"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/casper/android/activity/EditorActivity;->mUsedFrontCam:Z

    .line 338
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 340
    invoke-static {}, Lio/casper/android/n/c/a/e;->i()Lio/casper/android/n/c/a/e;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mGeoFiltersTable:Lio/casper/android/n/c/a/e;

    .line 342
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSnapchatManager:Lio/casper/android/l/t;

    .line 343
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 344
    new-instance v0, Lio/casper/android/l/q;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSavedMediaManager:Lio/casper/android/l/q;

    .line 345
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSettingsManager:Lio/casper/android/l/r;

    .line 346
    new-instance v0, Lio/casper/android/l/b;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddonManager:Lio/casper/android/l/b;

    .line 347
    new-instance v0, Lio/casper/android/l/m;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mLocationManager:Lio/casper/android/l/m;

    .line 349
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {v0, v5, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 351
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 352
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, v4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 353
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, v4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCanceledOnTouchOutside(Z)V

    .line 355
    const v0, 0x7f0c00a3

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mImageView:Landroid/widget/ImageView;

    .line 356
    const v0, 0x7f0c00a1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoView:Landroid/widget/VideoView;

    .line 358
    const v0, 0x7f0c00a4

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPager:Landroid/support/v4/view/ViewPager;

    .line 360
    new-instance v0, Lio/casper/android/a/d;

    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/casper/android/a/d;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPagerAdapter:Lio/casper/android/a/d;

    .line 361
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mFilterPagerAdapter:Lio/casper/android/a/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 362
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 364
    invoke-direct {p0}, Lio/casper/android/activity/EditorActivity;->f()V

    .line 366
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    .line 369
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 370
    const v0, 0x7f0c00af

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    .line 371
    const v0, 0x7f0c00b7

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

    .line 372
    const v0, 0x7f0c00bc

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    .line 373
    const v0, 0x7f0c00cc

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBottomToolbar:Landroid/support/v7/widget/Toolbar;

    .line 374
    const v0, 0x7f0c00c5

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterToolbar:Landroid/support/v7/widget/Toolbar;

    .line 377
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCanvasFrame:Landroid/widget/FrameLayout;

    .line 378
    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingFrame:Landroid/widget/FrameLayout;

    .line 379
    const v0, 0x7f0c00a6

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerFrame:Landroid/widget/FrameLayout;

    .line 380
    const v0, 0x7f0c00a7

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionFrame:Landroid/widget/FrameLayout;

    .line 383
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionButton:Landroid/widget/ImageButton;

    .line 384
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingButton:Landroid/widget/ImageButton;

    .line 385
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00ab

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStretchButton:Landroid/widget/ImageButton;

    .line 386
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00aa

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    .line 387
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerButton:Landroid/widget/ImageButton;

    .line 388
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00ae

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFlipVerticalButton:Landroid/widget/ImageButton;

    .line 389
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFlipHorizontalButton:Landroid/widget/ImageButton;

    .line 392
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00b0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mExitCaptionButton:Landroid/widget/ImageButton;

    .line 393
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTypeCaptionButton:Landroid/widget/ImageButton;

    .line 394
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00b2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRotateCaptionButton:Landroid/widget/ImageButton;

    .line 395
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mPalleteCaptionButton:Landroid/widget/ImageButton;

    .line 396
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00b5

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mIncreaseCaptionButton:Landroid/widget/ImageButton;

    .line 397
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00b6

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDecreaseCaptionButton:Landroid/widget/ImageButton;

    .line 398
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00b4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mResizeCaptionButton:Landroid/widget/ImageButton;

    .line 401
    const v0, 0x7f0c00c3

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionSizeContainer:Landroid/widget/LinearLayout;

    .line 402
    const v0, 0x7f0c00c4

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionSizeSeekBar:Landroid/widget/SeekBar;

    .line 405
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00b8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mExitDrawingButton:Landroid/widget/ImageButton;

    .line 406
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mPalleteDrawingButton:Landroid/widget/ImageButton;

    .line 407
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00ba

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mUndoDrawingButton:Landroid/widget/ImageButton;

    .line 408
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00bb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRedoDrawingButton:Landroid/widget/ImageButton;

    .line 411
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00bd

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mExitStickerButton:Landroid/widget/ImageButton;

    .line 412
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddImojiButton:Landroid/widget/ImageButton;

    .line 413
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddAndroidEmojiButton:Landroid/widget/ImageButton;

    .line 414
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddAppleEmojiButton:Landroid/widget/ImageButton;

    .line 415
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00c0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAddTwitterEmojiButton:Landroid/widget/ImageButton;

    .line 416
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRemoveStickerButton:Landroid/widget/ImageButton;

    .line 419
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBottomToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeButton:Landroid/widget/ImageButton;

    .line 420
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBottomToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeText:Landroid/widget/TextView;

    .line 421
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBottomToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mShowFiltersButton:Landroid/widget/ImageButton;

    .line 422
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBottomToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mChooseLocationButton:Landroid/widget/ImageButton;

    .line 423
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBottomToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00d0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSaveButton:Landroid/widget/ImageButton;

    .line 424
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBottomToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c009b

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSendButton:Landroid/widget/ImageButton;

    .line 427
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mNoneFilterButton:Landroid/widget/ImageView;

    .line 428
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00c7

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mInstasnapFilterButton:Landroid/widget/ImageView;

    .line 429
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBwFilterButton:Landroid/widget/ImageView;

    .line 430
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00c9

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSepiaFilterButton:Landroid/widget/ImageView;

    .line 431
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00ca

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mInvertFilterButton:Landroid/widget/ImageView;

    .line 432
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mSketchFilterButton:Landroid/widget/ImageView;

    .line 434
    new-instance v0, Lio/casper/android/ui/d;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/ui/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingView:Lio/casper/android/ui/d;

    .line 435
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mDrawingFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mDrawingView:Lio/casper/android/ui/d;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 437
    new-instance v0, Lio/casper/android/ui/a;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity;->mCaptionFrame:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lio/casper/android/ui/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionView:Lio/casper/android/ui/a;

    .line 438
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mCaptionFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mCaptionView:Lio/casper/android/ui/a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 440
    new-instance v0, Lio/casper/android/ui/a/a;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/ui/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    .line 441
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 442
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a/a;->a(Landroid/content/Context;)V

    .line 444
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 446
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 676
    :goto_2
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->a()V

    .line 677
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->b()V

    .line 679
    new-instance v0, Lio/casper/android/util/c/a;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const-string v2, "emoji_android_png"

    invoke-direct {v0, v1, v2}, Lio/casper/android/util/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lio/casper/android/activity/EditorActivity$45;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$45;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-static {v0, v1}, Lio/casper/android/i/c;->a(Lio/casper/android/util/c/c;Lio/casper/android/a/a/b$a;)Lio/casper/android/i/c;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAndroidEmojiPickerFragment:Lio/casper/android/i/c;

    .line 687
    new-instance v0, Lio/casper/android/util/c/a;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const-string v2, "emoji_apple_png"

    invoke-direct {v0, v1, v2}, Lio/casper/android/util/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lio/casper/android/activity/EditorActivity$52;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$52;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-static {v0, v1}, Lio/casper/android/i/c;->a(Lio/casper/android/util/c/c;Lio/casper/android/a/a/b$a;)Lio/casper/android/i/c;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mAppleEmojiPickerFragment:Lio/casper/android/i/c;

    .line 695
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const-string v1, "emoji_twitter_png.zip"

    const-string v2, "emoji_twitter_svg.zip"

    invoke-static {v0, v1, v2}, Lio/casper/android/util/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/casper/android/util/c/d;

    move-result-object v0

    .line 696
    new-instance v1, Lio/casper/android/activity/EditorActivity$53;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$53;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-static {v0, v1}, Lio/casper/android/i/c;->a(Lio/casper/android/util/c/c;Lio/casper/android/a/a/b$a;)Lio/casper/android/i/c;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTwitterEmojiPickerFragment:Lio/casper/android/i/c;

    .line 704
    new-instance v0, Lio/casper/android/i/j;

    invoke-direct {v0}, Lio/casper/android/i/j;-><init>()V

    iput-object v0, p0, Lio/casper/android/activity/EditorActivity;->mImojiPickerFragment:Lio/casper/android/i/j;

    .line 706
    const-string v0, "EditorActivity"

    const-string v1, "onCreate[end]"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :sswitch_0
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v2, "blank"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v6

    goto :goto_1

    .line 450
    :pswitch_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v1}, Lio/casper/android/l/s;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/casper/android/util/l;->b(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaFile:Ljava/io/File;

    invoke-static {v1}, Lio/casper/android/util/c;->a(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 456
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 457
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 459
    const-string v0, "EditorActivity"

    const-string v2, "Screen Dimensions w=%s h=%s"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v0, v2, v8}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    const/16 v2, 0x438

    .line 462
    const/16 v0, 0x780

    .line 464
    if-lt v3, v2, :cond_5

    if-ge v1, v0, :cond_9

    :cond_5
    move v0, v1

    move v1, v3

    .line 469
    :goto_3
    new-instance v2, Lio/casper/android/util/h;

    invoke-direct {v2, v1, v0}, Lio/casper/android/util/h;-><init>(II)V

    .line 470
    const-string v0, "EditorActivity"

    const-string v1, "Boundary Dimensions w=%s h=%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lio/casper/android/util/h;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {v2}, Lio/casper/android/util/h;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v0, v1, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    new-instance v0, Lio/casper/android/util/h;

    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v1, v3}, Lio/casper/android/util/h;-><init>(II)V

    .line 473
    const-string v1, "EditorActivity"

    const-string v3, "Bitmap Dimensions w=%s h=%s"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/casper/android/util/h;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0}, Lio/casper/android/util/h;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v1, v3, v7}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    invoke-static {v0, v2}, Lio/casper/android/util/c;->a(Lio/casper/android/util/h;Lio/casper/android/util/h;)Lio/casper/android/util/h;

    move-result-object v0

    .line 476
    const-string v1, "EditorActivity"

    const-string v2, "Scaled Bitmap Dimensions w=%s h=%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/casper/android/util/h;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v0}, Lio/casper/android/util/h;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-virtual {v0}, Lio/casper/android/util/h;->a()I

    move-result v2

    .line 479
    invoke-virtual {v0}, Lio/casper/android/util/h;->b()I

    move-result v3

    .line 494
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 495
    const-string v1, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 497
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    move v0, v4

    .line 516
    :goto_4
    :try_start_1
    const-string v1, "EditorActivity"

    const-string v6, "ExifOrientation Rotation=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 522
    :goto_5
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lio/casper/android/util/c;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 523
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 524
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f070071

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 525
    invoke-virtual {p0}, Lio/casper/android/activity/EditorActivity;->finish()V

    goto/16 :goto_0

    :pswitch_2
    move v0, v4

    .line 500
    goto :goto_4

    .line 503
    :pswitch_3
    const/16 v0, 0x5a

    .line 504
    goto :goto_4

    .line 507
    :pswitch_4
    const/16 v0, 0xb4

    .line 508
    goto :goto_4

    .line 511
    :pswitch_5
    const/16 v0, 0x10e

    goto :goto_4

    .line 518
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v4

    .line 519
    :goto_6
    const-string v6, "EditorActivity"

    const-string v7, "Processing ExifInformation for Bitmap failed with Exception"

    invoke-static {v6, v7, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 529
    :cond_6
    if-eqz v0, :cond_7

    .line 532
    :try_start_2
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lio/casper/android/util/c;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 539
    :cond_7
    :goto_7
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lio/casper/android/activity/EditorActivity;->a(Landroid/graphics/Bitmap;)V

    .line 541
    invoke-direct {p0}, Lio/casper/android/activity/EditorActivity;->d()V

    goto/16 :goto_2

    .line 533
    :catch_1
    move-exception v1

    .line 534
    const-string v2, "EditorActivity"

    const-string v3, "Rotating Bitmap [%s degrees] failed with Exception"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v2, v3, v1, v5}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 602
    :pswitch_6
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mMediaOverlayFile:Ljava/io/File;

    if-eqz v0, :cond_8

    .line 606
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaOverlayFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 609
    :cond_8
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStretchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFlipHorizontalButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFlipVerticalButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mShowFiltersButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lio/casper/android/activity/EditorActivity$23;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$23;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 627
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lio/casper/android/activity/EditorActivity$34;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$34;-><init>(Lio/casper/android/activity/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 655
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 657
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto/16 :goto_2

    .line 667
    :pswitch_7
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v1}, Lio/casper/android/l/s;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 518
    :catch_2
    move-exception v1

    goto/16 :goto_6

    :cond_9
    move v1, v2

    goto/16 :goto_3

    .line 446
    :sswitch_data_0
    .sparse-switch
        0x5979154 -> :sswitch_2
        0x5faa95b -> :sswitch_0
        0x6b0147b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 497
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-super {p0}, Lio/casper/android/activity/a/a;->onDestroy()V

    .line 273
    const-string v0, "EditorActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onDestroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    const-string v0, "EditorActivity"

    const-string v1, "onDestroy[start]"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mStickerView:Lio/casper/android/ui/a/a;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a;->c()V

    .line 280
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :cond_1
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 286
    iput-object v4, p0, Lio/casper/android/activity/EditorActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 289
    :cond_2
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mFilterPreviewViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 293
    :cond_3
    const v0, 0x7f0c00a0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/util/a;->a(Landroid/view/View;)V

    .line 294
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 296
    const-string v0, "EditorActivity"

    const-string v1, "onDestroy[end]"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lio/casper/android/activity/a/a;->onResume()V

    .line 247
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mMediaType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 250
    :cond_0
    return-void
.end method
