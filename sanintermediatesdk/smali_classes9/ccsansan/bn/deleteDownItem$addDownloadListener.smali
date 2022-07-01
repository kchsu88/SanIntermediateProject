.class final Lccsansan/bn/deleteDownItem$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedList;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bn/deleteDownItem$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iput-object p2, p0, Lccsansan/bn/deleteDownItem$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bn/deleteDownItem$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v1, p0, Lccsansan/bn/deleteDownItem$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/bn/deleteDownItem;->addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    return-void
.end method
