.class public Lio/casper/android/d/a;
.super Ljava/lang/Object;
.source "BitStampCallbackObject.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/casper/android/d/a;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/casper/android/d/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/casper/android/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lio/casper/android/g/a;

    invoke-direct {v0}, Lio/casper/android/g/a;-><init>()V

    invoke-virtual {v0}, Lio/casper/android/g/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
