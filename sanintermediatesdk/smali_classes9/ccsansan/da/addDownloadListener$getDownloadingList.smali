.class public Lccsansan/da/addDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/da/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getDownloadingList"
.end annotation


# instance fields
.field public IncentiveDownloadUtils:Ljava/lang/String;

.field public addDownloadListener:Z

.field public getDownloadedList:Z

.field public getDownloadingList:Ljava/lang/String;

.field public removeDownloadListener:Z

.field public unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 13
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lccsansan/da/addDownloadListener$getDownloadingList;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 p3, 0x1

    iput-boolean p3, p0, Lccsansan/da/addDownloadListener$getDownloadingList;->removeDownloadListener:Z

    .line 4
    iput-boolean p3, p0, Lccsansan/da/addDownloadListener$getDownloadingList;->getDownloadedList:Z

    .line 8
    iput-boolean p1, p0, Lccsansan/da/addDownloadListener$getDownloadingList;->addDownloadListener:Z

    .line 9
    iput-object p2, p0, Lccsansan/da/addDownloadListener$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lccsansan/da/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    return-void
.end method
