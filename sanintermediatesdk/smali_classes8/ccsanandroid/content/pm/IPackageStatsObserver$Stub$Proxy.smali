.class Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageStatsObserver.java"

# interfaces
.implements Lccsanandroid/content/pm/IPackageStatsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/content/pm/IPackageStatsObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lccsanandroid/content/pm/IPackageStatsObserver;


# instance fields
.field private mRemote:Lccsanandroid/os/IBinder;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Lccsanandroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 92
    iget-object v0, p0, Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "android.content.pm.IPackageStatsObserver"

    return-object v0
.end method

.method public onGetStatsCompleted(Lccsanandroid/content/pm/PackageStats;Z)V
    .locals 4
    .param p1, "pStats"    # Lccsanandroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pStats",
            "succeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, "_data":Lccsanandroid/os/Parcel;
    :try_start_0
    const-string v1, "android.content.pm.IPackageStatsObserver"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/pm/PackageStats;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v1, p0, Lccsanandroid/content/pm/IPackageStatsObserver$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v1

    .line 112
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lccsanandroid/content/pm/IPackageStatsObserver$Stub;->getDefaultImpl()Lccsanandroid/content/pm/IPackageStatsObserver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 113
    invoke-static {}, Lccsanandroid/content/pm/IPackageStatsObserver$Stub;->getDefaultImpl()Lccsanandroid/content/pm/IPackageStatsObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lccsanandroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Lccsanandroid/content/pm/PackageStats;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 114
    return-void

    .line 118
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 119
    nop

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 119
    throw v1
.end method
