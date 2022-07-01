.class Lccsancom/san/mads/action/actiontype/ActionTypeApp$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cy/removeDownloadListener$deleteDownItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/action/actiontype/ActionTypeApp;->resolveUrl(Ljava/lang/String;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;


# direct methods
.method constructor <init>(Lccsancom/san/mads/action/actiontype/ActionTypeApp;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/mads/action/actiontype/ActionTypeApp$1;->unifiedDownload:Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultClick(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/action/actiontype/ActionTypeApp$1;->unifiedDownload:Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;

    invoke-interface {v0, p1, p2}, Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener(ZLjava/lang/String;)V

    return-void
.end method
