.class public Lio/casper/android/l/n;
.super Lio/casper/android/l/a/a;
.source "MediaManager.java"


# instance fields
.field public mApksFolder:Ljava/io/File;

.field public mContext:Landroid/content/Context;

.field public mExternalCacheFolder:Ljava/io/File;

.field public mFiltersFolder:Ljava/io/File;

.field public mFontsFolder:Ljava/io/File;

.field public mInternalDataFolder:Ljava/io/File;

.field public mMainFolder:Ljava/io/File;

.field public mSavedSnapsFolder:Ljava/io/File;

.field public mSentSnapsFolder:Ljava/io/File;

.field public mSnapTagsFolder:Ljava/io/File;

.field public mStickersFolder:Ljava/io/File;

.field public mVideoThumbnailsFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lio/casper/android/l/n;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "io.casper.android"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    .line 39
    iget-object v0, p0, Lio/casper/android/l/n;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/n;->mInternalDataFolder:Ljava/io/File;

    .line 41
    iget-object v0, p0, Lio/casper/android/l/n;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lio/casper/android/l/n;->mContext:Landroid/content/Context;

    const v2, 0x7f07015a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    .line 47
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    const-string v2, "Cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mExternalCacheFolder:Ljava/io/File;

    .line 48
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    const-string v2, "SnapTags"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mSnapTagsFolder:Ljava/io/File;

    .line 49
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    const-string v2, "Saved Snaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mSavedSnapsFolder:Ljava/io/File;

    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    const-string v2, "Sent Snaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mSentSnapsFolder:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    const-string v2, "Fonts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mFontsFolder:Ljava/io/File;

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    const-string v2, "Stickers"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mStickersFolder:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    const-string v2, "Video Thumbnails"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mVideoThumbnailsFolder:Ljava/io/File;

    .line 55
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    const-string v2, "Filters"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mFiltersFolder:Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    const-string v2, "Updates"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/l/n;->mApksFolder:Ljava/io/File;

    .line 58
    iget-object v0, p0, Lio/casper/android/l/n;->mExternalCacheFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    iget-object v0, p0, Lio/casper/android/l/n;->mStickersFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 60
    iget-object v0, p0, Lio/casper/android/l/n;->mVideoThumbnailsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    iget-object v0, p0, Lio/casper/android/l/n;->mFiltersFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    iget-object v0, p0, Lio/casper/android/l/n;->mSnapTagsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 63
    iget-object v0, p0, Lio/casper/android/l/n;->mFontsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 64
    iget-object v0, p0, Lio/casper/android/l/n;->mSavedSnapsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 65
    iget-object v0, p0, Lio/casper/android/l/n;->mSentSnapsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    iget-object v0, p0, Lio/casper/android/l/n;->mApksFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 68
    iget-object v0, p0, Lio/casper/android/l/n;->mExternalCacheFolder:Ljava/io/File;

    invoke-virtual {p0, v0}, Lio/casper/android/l/n;->d(Ljava/io/File;)Z

    .line 69
    iget-object v0, p0, Lio/casper/android/l/n;->mStickersFolder:Ljava/io/File;

    invoke-virtual {p0, v0}, Lio/casper/android/l/n;->d(Ljava/io/File;)Z

    .line 70
    iget-object v0, p0, Lio/casper/android/l/n;->mFiltersFolder:Ljava/io/File;

    invoke-virtual {p0, v0}, Lio/casper/android/l/n;->d(Ljava/io/File;)Z

    .line 71
    iget-object v0, p0, Lio/casper/android/l/n;->mVideoThumbnailsFolder:Ljava/io/File;

    invoke-virtual {p0, v0}, Lio/casper/android/l/n;->d(Ljava/io/File;)Z

    .line 73
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    iget-object v0, p0, Lio/casper/android/l/n;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 94
    return-void
.end method

.method public a(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 85
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, p2, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lio/casper/android/l/n;->mContext:Landroid/content/Context;

    const v1, 0x7f07015a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mApksFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Casper-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mStickersFolder:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_0
    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v0, p0, Lio/casper/android/l/n;->mFiltersFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 141
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 142
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 143
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    return-object v1
.end method

.method public f(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 152
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/casper/android/l/n;->mVideoThumbnailsFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
