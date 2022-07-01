.class public Lccsansan/co/shouldTryHandlingAction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/co/shouldTryHandlingAction$getDownloadingList;
    }
.end annotation


# instance fields
.field private final getDownloadingList:Ljava/lang/String;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 8
    sget-object v0, Lccsansan/co/shouldTryHandlingAction$getDownloadingList;->TRACKING_URL:Lccsansan/co/shouldTryHandlingAction$getDownloadingList;

    invoke-direct {p0, v0, p1, p2}, Lccsansan/co/shouldTryHandlingAction;-><init>(Lccsansan/co/shouldTryHandlingAction$getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p3}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lccsansan/co/shouldTryHandlingAction$getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 6
    iput-object p2, p0, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/String;

    return-object v0
.end method
