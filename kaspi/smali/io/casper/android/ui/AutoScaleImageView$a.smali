.class public Lio/casper/android/ui/AutoScaleImageView$a;
.super Ljava/lang/Object;
.source "AutoScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/AutoScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lio/casper/android/ui/AutoScaleImageView$a;->width:I

    .line 27
    iput p2, p0, Lio/casper/android/ui/AutoScaleImageView$a;->height:I

    .line 28
    return-void
.end method
