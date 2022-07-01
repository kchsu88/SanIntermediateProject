.class final enum Lccsancom/san/mads/mraid/deleteDownItem$unifiedDownload;
.super Lccsancom/san/mads/mraid/deleteDownItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/san/mads/mraid/deleteDownItem;-><init>(Ljava/lang/String;ILjava/lang/String;Lccsancom/san/mads/mraid/deleteDownItem$IncentiveDownloadUtils;)V

    return-void
.end method


# virtual methods
.method requiresClick(Lccsancom/san/mads/mraid/getDownloadedCount;)Z
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/mads/mraid/getDownloadedCount;->INLINE:Lccsancom/san/mads/mraid/getDownloadedCount;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
