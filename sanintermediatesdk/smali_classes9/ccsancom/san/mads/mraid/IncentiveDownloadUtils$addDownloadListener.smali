.class Lccsancom/san/mads/mraid/IncentiveDownloadUtils$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/mraid/deleteDownItem;

.field final synthetic unifiedDownload:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/deleteDownItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/deleteDownItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDownloadListener(Lccsancom/san/mads/mraid/addDownloadListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/deleteDownItem;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/deleteDownItem;Ljava/lang/String;)V

    return-void
.end method
