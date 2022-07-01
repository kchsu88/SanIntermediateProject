.class public abstract Lccsanandroid/content/pm/IPackageStatsObserver$Stub;
.super Lccsanandroid/os/Binder;
.source "IPackageStatsObserver.java"

# interfaces
.implements Lccsanandroid/content/pm/IPackageStatsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/content/pm/IPackageStatsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageStatsObserver"

.field static final TRANSACTION_onGetStatsCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.content.pm.IPackageStatsObserver"

    invoke-virtual {p0, p0, v0}, Lccsanandroid/content/pm/IPackageStatsObserver$Stub;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Lccsanandroid/os/IBinder;)Lccsanandroid/content/pm/IPackageStatsObserver;
    .locals 2
    .param p0, "obj"    # Lccsanandroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    const-string v0, "android.content.pm.IPackageStatsObserver"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Lccsanandroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lccsanandroid/content/pm/IPackageStatsObserver;

    if-eqz v1, :cond_1

    .line 44
    move-object v1, v0

    check-cast v1, Lccsanandroid/content/pm/IPackageStatsObserver;

    return-object v1

    .line 46
    :cond_1
    new-instance v1, Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lccsanandroid/content/pm/IPackageStatsObserver;
    .locals 1

    .line 138
    sget-object v0, Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;->sDefaultImpl:Lccsanandroid/content/pm/IPackageStatsObserver;

    return-object v0
.end method

.method public static setDefaultImpl(Lccsanandroid/content/pm/IPackageStatsObserver;)Z
    .locals 2
    .param p0, "impl"    # Lccsanandroid/content/pm/IPackageStatsObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 128
    sget-object v0, Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;->sDefaultImpl:Lccsanandroid/content/pm/IPackageStatsObserver;

    if-nez v0, :cond_1

    .line 131
    if-eqz p0, :cond_0

    .line 132
    sput-object p0, Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;->sDefaultImpl:Lccsanandroid/content/pm/IPackageStatsObserver;

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 0

    .line 50
    return-object p0
.end method

.method public onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Lccsanandroid/os/Parcel;
    .param p3, "reply"    # Lccsanandroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const-string v0, "android.content.pm.IPackageStatsObserver"

    .line 55
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/os/Binder;->onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 59
    :sswitch_0
    invoke-virtual {p3, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v1

    .line 64
    :sswitch_1
    invoke-virtual {p2, v0}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lccsanandroid/content/pm/PackageStats;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/PackageStats;

    .local v2, "_arg0":Lccsanandroid/content/pm/PackageStats;
    goto :goto_0

    .line 70
    .end local v2    # "_arg0":Lccsanandroid/content/pm/PackageStats;
    :cond_0
    const/4 v2, 0x0

    .line 73
    .restart local v2    # "_arg0":Lccsanandroid/content/pm/PackageStats;
    :goto_0
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 74
    .local v3, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v3}, Lccsanandroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Lccsanandroid/content/pm/PackageStats;Z)V

    .line 75
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
