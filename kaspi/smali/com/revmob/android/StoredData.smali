.class public Lcom/revmob/android/StoredData;
.super Ljava/lang/Object;
.source "StoredData.java"


# static fields
.field private static final BASE_KEY:Ljava/lang/String; = "RevMob"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/revmob/android/StoredData;->context:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public isAlreadyTracked()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    iget-object v0, p0, Lcom/revmob/android/StoredData;->context:Landroid/content/Context;

    const-string v1, "RevMob"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Registered"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public markAsTracked()V
    .locals 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/revmob/android/StoredData;->context:Landroid/content/Context;

    const-string v1, "RevMob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    const-string v1, "Registered"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 18
    return-void
.end method
