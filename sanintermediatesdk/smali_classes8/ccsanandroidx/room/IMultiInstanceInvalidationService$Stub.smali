.class public abstract Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;
.super Lccsanandroid/os/Binder;
.source "IMultiInstanceInvalidationService.java"

# interfaces
.implements Lccsanandroidx/room/IMultiInstanceInvalidationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/IMultiInstanceInvalidationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.room.IMultiInstanceInvalidationService"

.field static final TRANSACTION_broadcastInvalidation:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    invoke-virtual {p0, p0, v0}, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Lccsanandroid/os/IBinder;)Lccsanandroidx/room/IMultiInstanceInvalidationService;
    .locals 2
    .param p0, "obj"    # Lccsanandroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Lccsanandroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lccsanandroidx/room/IMultiInstanceInvalidationService;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Lccsanandroidx/room/IMultiInstanceInvalidationService;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;

    invoke-direct {v1, p0}, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Lccsanandroid/os/Parcel;
    .param p3, "reply"    # Lccsanandroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/os/Binder;->onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 47
    :sswitch_0
    invoke-virtual {p3, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v1

    .line 75
    :sswitch_1
    invoke-virtual {p2, v0}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg0":I
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;->broadcastInvalidation(I[Ljava/lang/String;)V

    .line 81
    return v1

    .line 64
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p2, v0}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lccsanandroidx/room/IMultiInstanceInvalidationCallback$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsanandroidx/room/IMultiInstanceInvalidationCallback;

    move-result-object v2

    .line 68
    .local v2, "_arg0":Lccsanandroidx/room/IMultiInstanceInvalidationCallback;
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v3

    .line 69
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;->unregisterCallback(Lccsanandroidx/room/IMultiInstanceInvalidationCallback;I)V

    .line 70
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 71
    return v1

    .line 52
    .end local v2    # "_arg0":Lccsanandroidx/room/IMultiInstanceInvalidationCallback;
    .end local v3    # "_arg1":I
    :sswitch_3
    invoke-virtual {p2, v0}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lccsanandroidx/room/IMultiInstanceInvalidationCallback$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsanandroidx/room/IMultiInstanceInvalidationCallback;

    move-result-object v2

    .line 56
    .restart local v2    # "_arg0":Lccsanandroidx/room/IMultiInstanceInvalidationCallback;
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;->registerCallback(Lccsanandroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I

    move-result v4

    .line 58
    .local v4, "_result":I
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v4}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 60
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
