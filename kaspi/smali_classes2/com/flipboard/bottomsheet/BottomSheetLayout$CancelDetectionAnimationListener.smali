.class Lcom/flipboard/bottomsheet/BottomSheetLayout$CancelDetectionAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelDetectionAnimationListener"
.end annotation


# instance fields
.field protected canceled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$CancelDetectionAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$CancelDetectionAnimationListener;->canceled:Z

    .line 57
    return-void
.end method
