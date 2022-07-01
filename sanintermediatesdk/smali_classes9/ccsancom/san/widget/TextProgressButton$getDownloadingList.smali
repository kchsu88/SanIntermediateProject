.class Lccsancom/san/widget/TextProgressButton$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/widget/TextProgressButton;->updateDownloadUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/widget/TextProgressButton;


# direct methods
.method constructor <init>(Lccsancom/san/widget/TextProgressButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton$getDownloadingList;->removeDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$getDownloadingList;->removeDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$1200(Lccsancom/san/widget/TextProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/getErrorCode;->pause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$602(Lccsancom/san/widget/TextProgressButton;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$getDownloadingList;->removeDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$600(Lccsancom/san/widget/TextProgressButton;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$getDownloadingList;->removeDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$1200(Lccsancom/san/widget/TextProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$602(Lccsancom/san/widget/TextProgressButton;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
