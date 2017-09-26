.class public Lcom/revmob/client/InstallClientListener;
.super Ljava/lang/Object;
.source "InstallClientListener.java"

# interfaces
.implements Lcom/revmob/client/RevMobClientListener;


# static fields
.field private static final ERROR_MESSAGE:Ljava/lang/String; = "Install not registered on server. Did you set a valid App ID? If not, collect one at http://revmob.com."


# instance fields
.field private data:Lcom/revmob/android/StoredData;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/revmob/android/StoredData;

    invoke-direct {v0, p1}, Lcom/revmob/android/StoredData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/client/InstallClientListener;->data:Lcom/revmob/android/StoredData;

    .line 16
    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    const-string v0, "Install not registered on server. Did you set a valid App ID? If not, collect one at http://revmob.com."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/revmob/client/InstallClientListener;->data:Lcom/revmob/android/StoredData;

    invoke-virtual {v0}, Lcom/revmob/android/StoredData;->markAsTracked()V

    .line 21
    const-string v0, "Install registered on server"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 22
    return-void
.end method
