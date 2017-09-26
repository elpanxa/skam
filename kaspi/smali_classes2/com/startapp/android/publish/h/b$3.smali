.class final Lcom/startapp/android/publish/h/b$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/h/b;->a(Landroid/widget/VideoView;Lcom/startapp/android/publish/h/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/h/b$a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/h/b$a;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/startapp/android/publish/h/b$3;->a:Lcom/startapp/android/publish/h/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    .prologue
    .line 452
    iget-object v0, p0, Lcom/startapp/android/publish/h/b$3;->a:Lcom/startapp/android/publish/h/b$a;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/startapp/android/publish/h/b$a;->a(Landroid/view/View;IIIIIIII)V

    .line 453
    return-void
.end method
