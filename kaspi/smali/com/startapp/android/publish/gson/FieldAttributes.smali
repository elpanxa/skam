.class public final Lcom/startapp/android/publish/gson/FieldAttributes;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/startapp/android/publish/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/startapp/android/publish/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    .line 48
    return-void
.end method
