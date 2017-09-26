.class public final enum Lcom/startapp/android/publish/list3d/e;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/startapp/android/publish/list3d/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/list3d/e;

.field private static final synthetic b:[Lcom/startapp/android/publish/list3d/e;


# instance fields
.field private imagesManager:Lcom/startapp/android/publish/list3d/a;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/list3d/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private queryPosition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/startapp/android/publish/list3d/e;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/list3d/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/startapp/android/publish/list3d/e;

    sget-object v1, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    aput-object v1, v0, v2

    sput-object v0, Lcom/startapp/android/publish/list3d/e;->b:[Lcom/startapp/android/publish/list3d/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/e;->queryPosition:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/startapp/android/publish/list3d/a;

    invoke-direct {v0}, Lcom/startapp/android/publish/list3d/a;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/e;->imagesManager:Lcom/startapp/android/publish/list3d/a;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/list3d/e;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/startapp/android/publish/list3d/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/e;

    return-object v0
.end method

.method public static values()[Lcom/startapp/android/publish/list3d/e;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/startapp/android/publish/list3d/e;->b:[Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/list3d/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/list3d/e;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/e;->imagesManager:Lcom/startapp/android/publish/list3d/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/startapp/android/publish/list3d/a;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/e;->listItems:Ljava/util/List;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/list3d/e;->queryPosition:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/e;->imagesManager:Lcom/startapp/android/publish/list3d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/list3d/e;->queryPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/startapp/android/publish/list3d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 45
    return-void
.end method

.method public a(Lcom/startapp/android/publish/list3d/f;Z)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/e;->imagesManager:Lcom/startapp/android/publish/list3d/a;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/list3d/a;->a(Lcom/startapp/android/publish/list3d/f;Z)V

    .line 49
    return-void
.end method

.method public a(Lcom/startapp/android/publish/model/AdDetails;)V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/startapp/android/publish/list3d/ListItem;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/list3d/ListItem;-><init>(Lcom/startapp/android/publish/model/AdDetails;)V

    .line 31
    iget-object v1, p0, Lcom/startapp/android/publish/list3d/e;->listItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, p0, Lcom/startapp/android/publish/list3d/e;->imagesManager:Lcom/startapp/android/publish/list3d/a;

    iget-object v2, p0, Lcom/startapp/android/publish/list3d/e;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/startapp/android/publish/list3d/a;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/startapp/android/publish/list3d/e;->queryPosition:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/list3d/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/e;->listItems:Ljava/util/List;

    return-object v0
.end method
