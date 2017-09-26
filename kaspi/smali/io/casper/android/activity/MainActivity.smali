.class public Lio/casper/android/activity/MainActivity;
.super Lio/casper/android/activity/a/a;
.source "MainActivity.java"


# static fields
.field private static final PHOTO_CAPTURE:I = 0x3e9

.field private static final PHOTO_SELECT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mAddonManager:Lio/casper/android/l/b;

.field private mBottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

.field private mCaptureFile:Ljava/io/File;

.field private mChatSession:Lio/casper/android/n/b/a;

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mLearnManager:Lio/casper/android/l/l;

.field private mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

.field private mMenuSheetView:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

.field private mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

.field private mPagerAdapter:Lio/casper/android/a/d;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mRoutingManager:Lio/casper/android/l/p;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapchatAccountsTable:Lio/casper/android/e/c/a;

.field private mSnapchatManager:Lio/casper/android/l/t;

.field private mSuperSonicManager:Lio/casper/android/l/w;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mUpdateManager:Lio/casper/android/l/x;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lio/casper/android/activity/MainActivity;->mCurrentPage:I

    .line 110
    new-instance v0, Lio/casper/android/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lio/casper/android/activity/MainActivity$1;-><init>(Lio/casper/android/activity/MainActivity;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/MainActivity;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lio/casper/android/activity/MainActivity;->mCurrentPage:I

    return p1
.end method

.method static synthetic a(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/w;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mSuperSonicManager:Lio/casper/android/l/w;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/activity/MainActivity;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/activity/MainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/activity/MainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/p;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mRoutingManager:Lio/casper/android/l/p;

    return-object v0
.end method

.method static synthetic g(Lio/casper/android/activity/MainActivity;)Lcom/supersonic/mediationsdk/sdk/Supersonic;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/b;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mAddonManager:Lio/casper/android/l/b;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/i;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    return-object v0
.end method

.method static synthetic j(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/x;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mUpdateManager:Lio/casper/android/l/x;

    return-object v0
.end method

.method static synthetic k(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/r;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mSettingsManager:Lio/casper/android/l/r;

    return-object v0
.end method

.method static synthetic l(Lio/casper/android/activity/MainActivity;)Lcom/flipboard/bottomsheet/BottomSheetLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mBottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    return-object v0
.end method

.method static synthetic m(Lio/casper/android/activity/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1146
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 1148
    new-instance v0, Lio/casper/android/c/b/a/a;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v2}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lio/casper/android/activity/MainActivity$25;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$25;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/c/b/a/a;->a(Lio/casper/android/c/c/a/a;)V

    .line 1262
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1067
    :cond_0
    return-void

    .line 1065
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 1266
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->A()Lio/casper/android/l/r$a;

    move-result-object v0

    .line 1268
    sget-object v1, Lio/casper/android/l/r$a;->CASPER:Lio/casper/android/l/r$a;

    if-ne v0, v1, :cond_1

    .line 1269
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/camera/CameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    sget-object v1, Lio/casper/android/l/r$a;->INSTALLED_APP:Lio/casper/android/l/r$a;

    if-ne v0, v1, :cond_0

    .line 1271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1272
    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1}, Lio/casper/android/l/k;->b()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lio/casper/android/activity/MainActivity;->mCaptureFile:Ljava/io/File;

    .line 1273
    const-string v1, "output"

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mCaptureFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1274
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lio/casper/android/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mBottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mMenuSheetView:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    invoke-virtual {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->showWithSheetView(Landroid/view/View;)V

    .line 1351
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v1, Lio/casper/android/l/l;->CAMERA_PREFERENCES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v1, Lio/casper/android/l/l;->CAMERA_PREFERENCES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->a(Ljava/lang/String;)V

    .line 1359
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1360
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1361
    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1362
    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1363
    new-instance v1, Lio/casper/android/activity/MainActivity$26;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$26;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1373
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 1379
    :goto_0
    return-void

    .line 1376
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->b()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const v3, 0x7f07006e

    const/4 v8, 0x0

    .line 1072
    invoke-super {p0, p1, p2, p3}, Lio/casper/android/activity/a/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 1074
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1076
    packed-switch p1, :pswitch_data_0

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1080
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_7

    .line 1083
    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lio/casper/android/util/k;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    if-eqz v1, :cond_6

    .line 1085
    const-string v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1086
    :cond_1
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07006f

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1088
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1092
    const-string v0, "mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "video"

    .line 1094
    :goto_1
    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/casper/android/util/a;->a(J)J

    move-result-wide v4

    const-wide/16 v6, 0x5

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 1096
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1097
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1098
    const v1, 0x7f070103

    invoke-virtual {p0, v1}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/casper/android/util/a;->a(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "MB"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1099
    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1100
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto/16 :goto_0

    .line 1092
    :cond_3
    const-string v0, "image"

    goto :goto_1

    .line 1104
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const-class v4, Lio/casper/android/activity/EditorActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1105
    const-string v3, "file"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    const-string v1, "type"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1112
    :cond_5
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1117
    :cond_6
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1120
    :cond_7
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1129
    :pswitch_1
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mCaptureFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mCaptureFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1131
    const-string v1, "file"

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mCaptureFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    const-string v1, "type"

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1076
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget v0, p0, Lio/casper/android/activity/MainActivity;->mCurrentPage:I

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const v12, 0x7f070042

    const v7, 0x7f0200d8

    const v6, 0x7f0200d5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 197
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v0, "MainActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-object p0, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {}, Lio/casper/android/e/c/a;->i()Lio/casper/android/e/c/a;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    .line 208
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mAdManager:Lio/casper/android/l/a;

    .line 209
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 210
    new-instance v0, Lio/casper/android/l/b;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mAddonManager:Lio/casper/android/l/b;

    .line 211
    new-instance v0, Lio/casper/android/l/x;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mUpdateManager:Lio/casper/android/l/x;

    .line 212
    new-instance v0, Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mLearnManager:Lio/casper/android/l/l;

    .line 213
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 214
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mSettingsManager:Lio/casper/android/l/r;

    .line 215
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mRoutingManager:Lio/casper/android/l/p;

    .line 216
    new-instance v0, Lio/casper/android/l/w;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mSuperSonicManager:Lio/casper/android/l/w;

    .line 217
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mSnapchatManager:Lio/casper/android/l/t;

    .line 219
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->setContentView(I)V

    .line 221
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v0, v11, v10}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 223
    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0700db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 224
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 225
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, v10}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 227
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 228
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0c00df

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 229
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    sget-object v1, Lio/casper/android/util/l;->WHITE_COLOUR_FILTER:Landroid/graphics/LightingColorFilter;

    invoke-static {v0, v1}, Lio/casper/android/util/l;->a(Landroid/widget/ProgressBar;Landroid/graphics/LightingColorFilter;)V

    .line 231
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 233
    const v0, 0x7f0c00de

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 234
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 235
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mBottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 237
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a;->e()Ljava/util/List;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-interface {v0, v10, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/b/b;

    .line 246
    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 248
    invoke-static {}, Lcom/amulyakhare/textdrawable/TextDrawable;->builder()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object v2

    .line 250
    new-instance v3, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-direct {v3}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;-><init>()V

    .line 251
    invoke-virtual {v3, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->setAvatar(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 252
    invoke-virtual {v0}, Lio/casper/android/e/b/b;->g()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->setId(J)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 253
    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->setName(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 254
    invoke-virtual {v0}, Lio/casper/android/e/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    invoke-virtual {v0}, Lio/casper/android/e/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->setDescription(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 257
    :cond_1
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    .line 258
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0, v3}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    goto :goto_1

    .line 262
    :cond_2
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lio/casper/android/activity/MainActivity$12;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$12;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->setOnProfileSwitchListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 278
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 280
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701f7

    .line 281
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$23;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$23;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 282
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 291
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 293
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701f9

    .line 294
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$27;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$27;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 295
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 304
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 306
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701ea

    .line 307
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$28;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$28;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 308
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 318
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;-><init>()V

    const v2, 0x7f0701ad

    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->setTitle(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 320
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 322
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701ad

    .line 323
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$29;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$29;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 324
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 333
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 335
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701ae

    .line 336
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$30;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$30;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 337
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 346
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;-><init>()V

    const v2, 0x7f070174

    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->setTitle(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 348
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 350
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701af

    .line 351
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$31;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$31;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 352
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 361
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mAddonManager:Lio/casper/android/l/b;

    invoke-virtual {v0}, Lio/casper/android/l/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 362
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 364
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701b0

    .line 365
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$32;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$32;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 366
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 376
    :cond_3
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 378
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f07018a

    .line 379
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$2;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$2;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 380
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 388
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mSuperSonicManager:Lio/casper/android/l/w;

    invoke-virtual {v0}, Lio/casper/android/l/w;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;-><init>()V

    const v2, 0x7f0701b1

    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->setTitle(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 392
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 394
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701b3

    .line 395
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$3;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$3;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 396
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 405
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 407
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701b2

    .line 408
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$4;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$4;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 409
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 418
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 420
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701b4

    .line 421
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$5;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$5;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 422
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 441
    :cond_4
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;-><init>()V

    const v2, 0x7f0701c6

    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->setTitle(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 443
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 445
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701c5

    .line 446
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$6;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$6;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 447
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 479
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 481
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701ac

    .line 482
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$7;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$7;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 483
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 492
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;-><init>()V

    const v2, 0x7f0701ab

    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->setTitle(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 494
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 496
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701aa

    .line 497
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$8;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$8;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 498
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 507
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 509
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701bf

    .line 510
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$9;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$9;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 511
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 507
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 520
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;-><init>()V

    const v2, 0x7f0701b6

    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerHeaderItem;->setTitle(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 522
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 524
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701c0

    .line 525
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$10;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$10;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 526
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 522
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 536
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 538
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f070177

    .line 539
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$11;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$11;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 540
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 549
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addDivider()Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 551
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    .line 553
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    const v2, 0x7f0701f2

    .line 554
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$13;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$13;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 555
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 551
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 605
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mDrawerView:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    invoke-direct {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;-><init>()V

    const v2, 0x7f07001e

    .line 607
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setTextPrimary(Ljava/lang/String;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/MainActivity$14;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$14;-><init>(Lio/casper/android/activity/MainActivity;)V

    .line 608
    invoke-virtual {v1, v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    move-result-object v1

    .line 605
    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->addItem(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 641
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lio/casper/android/activity/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v4, 0x7f070023

    const v5, 0x7f070018

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 645
    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 646
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 647
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 648
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 650
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lio/casper/android/activity/MainActivity$15;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$15;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 658
    const v0, 0x7f0c00e0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 662
    new-instance v1, Lio/casper/android/i/p;

    invoke-direct {v1}, Lio/casper/android/i/p;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance v1, Lio/casper/android/i/q;

    invoke-direct {v1}, Lio/casper/android/i/q;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    new-instance v1, Lio/casper/android/i/f;

    invoke-direct {v1}, Lio/casper/android/i/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    new-instance v1, Lio/casper/android/i/g;

    invoke-direct {v1}, Lio/casper/android/i/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    new-instance v1, Lio/casper/android/a/d;

    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lio/casper/android/a/d;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lio/casper/android/activity/MainActivity;->mPagerAdapter:Lio/casper/android/a/d;

    .line 668
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mPagerAdapter:Lio/casper/android/a/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 670
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 672
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lio/casper/android/activity/MainActivity$16;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$16;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 708
    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 710
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v1, Lio/casper/android/l/l;->FACEBOOK_AND_UPDATES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 712
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v1, Lio/casper/android/l/l;->FACEBOOK_AND_UPDATES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->a(Ljava/lang/String;)V

    .line 714
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 715
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 716
    const v1, 0x7f0700a7

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 717
    invoke-virtual {v0, v12}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 718
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 719
    new-instance v1, Lio/casper/android/activity/MainActivity$17;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$17;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 729
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 733
    :cond_5
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 735
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 737
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/casper/android/util/a;->a(J)J

    move-result-wide v4

    const-wide/16 v6, 0x5

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 744
    new-instance v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v4, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    const v4, 0x7f0701bd

    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 746
    const v4, 0x7f070103

    invoke-virtual {p0, v4}, Lio/casper/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Lio/casper/android/util/a;->a(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "MB"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 747
    invoke-virtual {v3, v12}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 748
    new-instance v2, Lio/casper/android/activity/MainActivity$18;

    invoke-direct {v2, p0, v1, v0}, Lio/casper/android/activity/MainActivity$18;-><init>(Lio/casper/android/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 760
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 810
    :goto_2
    new-instance v0, Lio/casper/android/c/b/a/b;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/c/b/a/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/casper/android/activity/MainActivity$20;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$20;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/c/b/a/b;->a(Lio/casper/android/c/c/a/a;)V

    .line 833
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.casper.android.INTENT_START_NOTIFICATION_SCHEDULE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/casper/android/notifications/AlarmManagerBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 834
    const-string v0, "MainActivity"

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "NotificationSchedule started via MainActivity"

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.casper.android.INTENT_START_NOTIFICATION_SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 840
    :goto_3
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mSuperSonicManager:Lio/casper/android/l/w;

    invoke-virtual {v0}, Lio/casper/android/l/w;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 842
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    .line 843
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->setClientSideCallbacks(Z)V

    .line 844
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V

    .line 845
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mSuperSonicManager:Lio/casper/android/l/w;

    invoke-virtual {v1}, Lio/casper/android/l/w;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v2}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_6
    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->LIST:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    const v3, 0x7f0701ef

    new-instance v4, Lio/casper/android/activity/MainActivity$21;

    invoke-direct {v4, p0}, Lio/casper/android/activity/MainActivity$21;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;-><init>(Landroid/content/Context;Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;ILcom/flipboard/bottomsheet/commons/MenuSheetView$OnMenuItemClickListener;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mMenuSheetView:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    .line 927
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mMenuSheetView:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->inflateMenu(I)V

    goto/16 :goto_0

    .line 764
    :cond_7
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const-class v4, Lio/casper/android/activity/EditorActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 765
    const-string v3, "file"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    const-string v1, "type"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    invoke-virtual {p0, v2}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 771
    :cond_8
    const-string v1, "SNAP_SENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 773
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mAdManager:Lio/casper/android/l/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/l/a;->a(Lio/casper/android/l/a$a;)V

    .line 775
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SNAP_SENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 777
    :cond_9
    const-string v1, "REPLY_SNAP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 778
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0700e5

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 781
    :cond_a
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mUpdateManager:Lio/casper/android/l/x;

    new-instance v1, Lio/casper/android/activity/MainActivity$19;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$19;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/l/x;->a(Lio/casper/android/l/x$a;)V

    goto/16 :goto_2

    .line 837
    :cond_b
    const-string v0, "MainActivity"

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "NotificationSchedule already Running"

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 934
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 936
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 937
    const v1, 0x7f0f0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 939
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const v3, 0x7f070042

    const/4 v0, 0x1

    .line 944
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1059
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 954
    :sswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->d()V

    goto :goto_0

    .line 959
    :sswitch_1
    invoke-virtual {p0}, Lio/casper/android/activity/MainActivity;->c()V

    goto :goto_0

    .line 965
    :sswitch_2
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 966
    const v2, 0x7f0701bd

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 967
    const v2, 0x7f0700d1

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 968
    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 969
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_0

    .line 976
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const-class v3, Lio/casper/android/activity/UpdatesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 981
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const-class v3, Lio/casper/android/activity/AccountStatisticsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 986
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    const-class v3, Lio/casper/android/activity/SnapTagActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 992
    :sswitch_6
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 993
    const v2, 0x7f0701f1

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 994
    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 995
    const/4 v2, 0x0

    iget-object v3, p0, Lio/casper/android/activity/MainActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v3}, Lio/casper/android/e/b/b;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/casper/android/activity/MainActivity$22;

    invoke-direct {v4, p0}, Lio/casper/android/activity/MainActivity$22;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1005
    new-instance v2, Lio/casper/android/h/a/a;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-direct {v2, v1}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v2}, Lio/casper/android/h/a/a;->a()V

    goto :goto_0

    .line 1012
    :sswitch_7
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1013
    const v2, 0x7f0701be

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1014
    const v2, 0x7f0700b5

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1015
    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1016
    const v2, 0x7f070036

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1017
    new-instance v2, Lio/casper/android/activity/MainActivity$24;

    invoke-direct {v2, p0}, Lio/casper/android/activity/MainActivity$24;-><init>(Lio/casper/android/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1045
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto/16 :goto_0

    .line 1052
    :sswitch_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/activity/MainActivity;->mRoutingManager:Lio/casper/android/l/p;

    invoke-virtual {v3}, Lio/casper/android/l/p;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1053
    new-instance v1, Lio/casper/android/b/a/h;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/casper/android/b/a/h;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lio/casper/android/activity/MainActivity;->mRoutingManager:Lio/casper/android/l/p;

    invoke-virtual {v2}, Lio/casper/android/l/p;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/h;->a(Ljava/lang/String;)Lio/casper/android/b/a/h;

    move-result-object v1

    invoke-static {v1}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto/16 :goto_0

    .line 944
    :sswitch_data_0
    .sparse-switch
        0x7f0c00f8 -> :sswitch_1
        0x7f0c00f9 -> :sswitch_0
        0x7f0c0150 -> :sswitch_2
        0x7f0c015f -> :sswitch_3
        0x7f0c0164 -> :sswitch_8
        0x7f0c0165 -> :sswitch_4
        0x7f0c0166 -> :sswitch_5
        0x7f0c0167 -> :sswitch_7
        0x7f0c0168 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lio/casper/android/activity/a/a;->onPause()V

    .line 188
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mChatSession:Lio/casper/android/n/b/a;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mChatSession:Lio/casper/android/n/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/b/a;->b()V

    .line 192
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 164
    const-string v0, "capture_file"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mCaptureFile:Ljava/io/File;

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lio/casper/android/activity/a/a;->onResume()V

    .line 143
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    sget-object v1, Lio/casper/android/util/l;->WHITE_COLOUR_FILTER:Landroid/graphics/LightingColorFilter;

    invoke-static {v0, v1}, Lio/casper/android/util/l;->a(Landroid/widget/ProgressBar;Landroid/graphics/LightingColorFilter;)V

    .line 144
    const-string v0, "MainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lio/casper/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v0}, Lio/casper/android/l/t;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lio/casper/android/n/b/a;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/n/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MainActivity;->mChatSession:Lio/casper/android/n/b/a;

    .line 148
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mChatSession:Lio/casper/android/n/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/b/a;->a()V

    .line 151
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    iget-object v0, p0, Lio/casper/android/activity/MainActivity;->mCaptureFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "capture_file"

    iget-object v1, p0, Lio/casper/android/activity/MainActivity;->mCaptureFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method
