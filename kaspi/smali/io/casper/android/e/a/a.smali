.class public final Lio/casper/android/e/a/a;
.super Ljava/lang/Object;
.source "ContentValuesContainer.java"


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field private mJsonSerializer:Lio/casper/android/util/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lio/casper/android/util/e;

    invoke-direct {v0}, Lio/casper/android/util/e;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/casper/android/e/a/a;-><init>(Lio/casper/android/util/e;Landroid/content/ContentValues;)V

    .line 17
    return-void
.end method

.method private constructor <init>(Lio/casper/android/util/e;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/casper/android/e/a/a;->mJsonSerializer:Lio/casper/android/util/e;

    .line 21
    iput-object p2, p0, Lio/casper/android/e/a/a;->mContentValues:Landroid/content/ContentValues;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/e/a/a;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public final a(Lio/casper/android/e/a/f;D)Lio/casper/android/e/a/a;
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/e/a/a;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {p1}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 49
    return-object p0
.end method

.method public final a(Lio/casper/android/e/a/f;I)Lio/casper/android/e/a/a;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lio/casper/android/e/a/a;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {p1}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    return-object p0
.end method

.method public final a(Lio/casper/android/e/a/f;J)Lio/casper/android/e/a/a;
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/e/a/a;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {p1}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    return-object p0
.end method

.method public final a(Lio/casper/android/e/a/f;Ljava/lang/String;)Lio/casper/android/e/a/a;
    .locals 2

    .prologue
    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string p2, ""

    .line 28
    :cond_0
    iget-object v0, p0, Lio/casper/android/e/a/a;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {p1}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object p0
.end method

.method public final a(Lio/casper/android/e/a/f;Ljava/util/List;)Lio/casper/android/e/a/a;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/e/a/a;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {p1}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/e/a/a;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {v2, p2}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object p0
.end method

.method public final a(Lio/casper/android/e/a/f;Z)Lio/casper/android/e/a/a;
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lio/casper/android/e/a/a;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {p1}, Lio/casper/android/e/a/f;->getColumnName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    return-object p0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
