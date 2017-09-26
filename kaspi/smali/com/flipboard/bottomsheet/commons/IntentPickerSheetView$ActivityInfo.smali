.class public Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;
.super Ljava/lang/Object;
.source "IntentPickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityInfo"
.end annotation


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public icon:Landroid/graphics/drawable/Drawable;

.field private iconLoadTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field public tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 90
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->label:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->componentName:Landroid/content/ComponentName;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 84
    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->label:Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->componentName:Landroid/content/ComponentName;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->iconLoadTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->iconLoadTask:Landroid/os/AsyncTask;

    return-object p1
.end method


# virtual methods
.method public getConcreteIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 96
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    return-object v0
.end method
