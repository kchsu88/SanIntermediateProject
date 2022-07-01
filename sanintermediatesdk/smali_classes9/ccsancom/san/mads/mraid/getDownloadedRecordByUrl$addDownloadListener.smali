.class Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;

.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    iput-object p2, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;->removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    iget-object p2, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V

    return-void
.end method
