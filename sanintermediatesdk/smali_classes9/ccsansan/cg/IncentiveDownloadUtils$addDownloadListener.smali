.class public abstract Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener;
.super Lccsanandroid/os/Binder;
.source ""

# interfaces
.implements Lccsansan/cg/IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cg/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "addDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener$IncentiveDownloadUtils;
    }
.end annotation


# direct methods
.method public static IncentiveDownloadUtils()Lccsansan/cg/IncentiveDownloadUtils;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/cg/IncentiveDownloadUtils;

    return-object v0
.end method

.method public static addDownloadListener(Lccsanandroid/os/IBinder;)Lccsansan/cg/IncentiveDownloadUtils;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lccsansan/cg/IncentiveDownloadUtils;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lccsansan/cg/IncentiveDownloadUtils;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
.end method
