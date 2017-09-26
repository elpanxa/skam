.class Lcom/startapp/android/publish/c/g$7;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/g;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$7;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$7;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0, p1, p2, p3}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method
