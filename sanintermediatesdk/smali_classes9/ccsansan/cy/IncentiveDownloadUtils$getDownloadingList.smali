.class Lccsansan/cy/IncentiveDownloadUtils$getDownloadingList;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cy/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getDownloadingList"
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    return-void
.end method
