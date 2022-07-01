.class Lccsansan/bw/resume$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/resume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsanandroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/bw/resume$unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lccsanandroid/content/pm/ResolveInfo;

    check-cast p2, Lccsanandroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lccsansan/bw/resume$unifiedDownload;->removeDownloadListener(Lccsanandroid/content/pm/ResolveInfo;Lccsanandroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method

.method public removeDownloadListener(Lccsanandroid/content/pm/ResolveInfo;Lccsanandroid/content/pm/ResolveInfo;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bw/resume$unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    iget-object v1, p1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v1, v1, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/bw/resume$unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    iget-object p1, p1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object p1, p1, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsansan/bw/resume$unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    :goto_0
    iget-object v0, p0, Lccsansan/bw/resume$unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    iget-object v1, p2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v1, v1, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsansan/bw/resume$unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    iget-object p2, p2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object p2, p2, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lccsansan/bw/resume$unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    sub-int/2addr p1, p2

    return p1
.end method
