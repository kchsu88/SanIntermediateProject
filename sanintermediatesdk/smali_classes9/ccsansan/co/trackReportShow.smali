.class public Lccsansan/co/trackReportShow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final removeDownloadListener:Lccsansan/co/ActionTypeDetailPage;


# direct methods
.method constructor <init>(IILjava/lang/Integer;Ljava/lang/Integer;Lccsansan/co/ActionTypeDetailPage;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lccsansan/co/ActionTypeDetailPage;",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p5}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    invoke-static {p6}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 4
    invoke-static {p8}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 10
    :goto_0
    iput-object p5, p0, Lccsansan/co/trackReportShow;->removeDownloadListener:Lccsansan/co/ActionTypeDetailPage;

    return-void
.end method


# virtual methods
.method public removeDownloadListener()Lccsansan/co/ActionTypeDetailPage;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/trackReportShow;->removeDownloadListener:Lccsansan/co/ActionTypeDetailPage;

    return-object v0
.end method
