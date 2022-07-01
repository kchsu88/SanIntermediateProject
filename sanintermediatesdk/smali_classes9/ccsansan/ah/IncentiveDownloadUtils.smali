.class public Lccsansan/ah/IncentiveDownloadUtils;
.super Lccsanandroid/app/Service;
.source ""


# instance fields
.field private getDownloadingList:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroid/app/Service;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Lccsansan/ba/IncentiveDownloadUtils$IncentiveDownloadUtils;

    iget-object v0, p0, Lccsansan/ah/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-direct {p1, v0}, Lccsansan/ba/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lccsanandroid/app/Service;->onCreate()V

    .line 2
    iput-object p0, p0, Lccsansan/ah/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lccsanandroid/app/Service;->onDestroy()V

    return-void
.end method
