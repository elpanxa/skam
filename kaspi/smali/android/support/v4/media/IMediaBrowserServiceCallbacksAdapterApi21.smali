.class Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;
.super Ljava/lang/Object;
.source "IMediaBrowserServiceCallbacksAdapterApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;
    }
.end annotation


# instance fields
.field private mAsBinderMethod:Ljava/lang/reflect/Method;

.field mCallbackObject:Ljava/lang/Object;

.field private mOnConnectFailedMethod:Ljava/lang/reflect/Method;

.field private mOnConnectMethod:Ljava/lang/reflect/Method;

.field private mOnLoadChildrenMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    .line 42
    :try_start_0
    const-string v0, "android.service.media.IMediaBrowserServiceCallbacks"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    const-string v1, "android.content.pm.ParceledListSlice"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    const-string v2, "asBinder"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mAsBinderMethod:Ljava/lang/reflect/Method;

    .line 45
    const-string v2, "onConnect"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/media/session/MediaSession$Token;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectMethod:Ljava/lang/reflect/Method;

    .line 47
    const-string v2, "onConnectFailed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectFailedMethod:Ljava/lang/reflect/Method;

    .line 48
    const-string v2, "onLoadChildren"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnLoadChildrenMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method asBinder()Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 58
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mAsBinderMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method onConnectFailed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectFailedMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method onLoadChildren(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnLoadChildrenMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    goto :goto_1
.end method
