.class Lcom/startapp/android/publish/list3d/a$a;
.super Landroid/os/AsyncTask;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/list3d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/startapp/android/publish/list3d/a;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/list3d/a;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/startapp/android/publish/list3d/a$a;->d:Lcom/startapp/android/publish/list3d/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/startapp/android/publish/list3d/a$a;->a:I

    .line 102
    iput p2, p0, Lcom/startapp/android/publish/list3d/a$a;->a:I

    .line 103
    iput-object p3, p0, Lcom/startapp/android/publish/list3d/a$a;->b:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/startapp/android/publish/list3d/a$a;->c:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/a$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapp/android/publish/h/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/a$a;->d:Lcom/startapp/android/publish/list3d/a;

    iget v1, v0, Lcom/startapp/android/publish/list3d/a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/startapp/android/publish/list3d/a;->e:I

    .line 115
    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/a$a;->d:Lcom/startapp/android/publish/list3d/a;

    iget-object v0, v0, Lcom/startapp/android/publish/list3d/a;->b:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/startapp/android/publish/list3d/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/a$a;->d:Lcom/startapp/android/publish/list3d/a;

    iget-object v0, v0, Lcom/startapp/android/publish/list3d/a;->d:Lcom/startapp/android/publish/list3d/f;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/a$a;->d:Lcom/startapp/android/publish/list3d/a;

    iget-object v0, v0, Lcom/startapp/android/publish/list3d/a;->d:Lcom/startapp/android/publish/list3d/f;

    iget v1, p0, Lcom/startapp/android/publish/list3d/a$a;->a:I

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/list3d/f;->a(I)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/a$a;->d:Lcom/startapp/android/publish/list3d/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/a;->b()V

    .line 122
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/list3d/a$a;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/list3d/a$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
