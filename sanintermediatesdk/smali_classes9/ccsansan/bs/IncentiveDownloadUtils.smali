.class public abstract Lccsansan/bs/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bs/IncentiveDownloadUtils$removeDownloadListener;
    }
.end annotation


# instance fields
.field protected removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;


# direct methods
.method public constructor <init>(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    return-void
.end method


# virtual methods
.method public abstract addDownloadListener()Lccsansan/bs/IncentiveDownloadUtils$removeDownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract unifiedDownload()Lccsansan/bs/IncentiveDownloadUtils$removeDownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method
