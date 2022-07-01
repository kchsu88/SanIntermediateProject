.class Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMultiInstanceInvalidationService.java"

# interfaces
.implements Lccsanandroidx/room/IMultiInstanceInvalidationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Lccsanandroid/os/IBinder;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Lccsanandroid/os/IBinder;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 98
    iget-object v0, p0, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    return-object v0
.end method

.method public broadcastInvalidation(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "tables"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Lccsanandroid/os/Parcel;
    :try_start_0
    const-string v1, "androidx.room.IMultiInstanceInvalidationService"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 169
    nop

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 169
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    return-object v0
.end method

.method public registerCallback(Lccsanandroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I
    .locals 5
    .param p1, "callback"    # Lccsanandroidx/room/IMultiInstanceInvalidationCallback;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 107
    .local v0, "_data":Lccsanandroid/os/Parcel;
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v1

    .line 110
    .local v1, "_reply":Lccsanandroid/os/Parcel;
    :try_start_0
    const-string v2, "androidx.room.IMultiInstanceInvalidationService"

    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lccsanandroidx/room/IMultiInstanceInvalidationCallback;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V

    .line 112
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    .line 114
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V

    .line 115
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .local v2, "_result":I
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 120
    nop

    .line 121
    return v2

    .line 118
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 120
    throw v2
.end method

.method public unregisterCallback(Lccsanandroidx/room/IMultiInstanceInvalidationCallback;I)V
    .locals 5
    .param p1, "callback"    # Lccsanandroidx/room/IMultiInstanceInvalidationCallback;
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, "_data":Lccsanandroid/os/Parcel;
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v1

    .line 137
    .local v1, "_reply":Lccsanandroid/os/Parcel;
    :try_start_0
    const-string v2, "androidx.room.IMultiInstanceInvalidationService"

    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lccsanandroidx/room/IMultiInstanceInvalidationCallback;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V

    .line 139
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v2, p0, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    .line 141
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 146
    nop

    .line 147
    return-void

    .line 144
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 146
    throw v2
.end method
