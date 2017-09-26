.class public Lio/casper/android/util/o$a;
.super Ljava/lang/Object;
.source "ZippedAssetReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public offset:I

.field final synthetic this$0:Lio/casper/android/util/o;


# direct methods
.method private constructor <init>(Lio/casper/android/util/o;[BII)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lio/casper/android/util/o$a;->this$0:Lio/casper/android/util/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lio/casper/android/util/o$a;->data:[B

    .line 102
    iput p3, p0, Lio/casper/android/util/o$a;->offset:I

    .line 103
    iput p4, p0, Lio/casper/android/util/o$a;->length:I

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lio/casper/android/util/o;[BIILio/casper/android/util/o$1;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lio/casper/android/util/o$a;-><init>(Lio/casper/android/util/o;[BII)V

    return-void
.end method
