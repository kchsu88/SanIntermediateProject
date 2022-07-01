.class Lccsansan/e/removeDownloadListener$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/e/removeDownloadListener;->getDownloadingList(Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/service/notification/StatusBarNotification;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/e/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/e/removeDownloadListener;Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/e/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/e/removeDownloadListener;

    iput-object p2, p0, Lccsansan/e/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsanandroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lccsansan/e/removeDownloadListener$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/e/removeDownloadListener$addDownloadListener;->removeDownloadListener:Lccsansan/e/removeDownloadListener;

    iget-object v1, p0, Lccsansan/e/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsanandroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lccsansan/e/removeDownloadListener$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/e/removeDownloadListener;->addDownloadListener(Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V

    return-void
.end method
