.class public Lccsancom/vungle/warren/tasks/DownloadJob;
.super Ljava/lang/Object;
.source "DownloadJob.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/Job;


# static fields
.field private static final REQUEST_KEY_EXTRA:Ljava/lang/String; = "request"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private final adLoader:Lccsancom/vungle/warren/AdLoader;

.field private final vungleApi:Lccsancom/vungle/warren/VungleStaticApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lccsancom/vungle/warren/tasks/DownloadJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/tasks/DownloadJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/VungleStaticApi;)V
    .locals 0
    .param p1, "adLoader"    # Lccsancom/vungle/warren/AdLoader;
    .param p2, "vungleApi"    # Lccsancom/vungle/warren/VungleStaticApi;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lccsancom/vungle/warren/tasks/DownloadJob;->adLoader:Lccsancom/vungle/warren/AdLoader;

    .line 27
    iput-object p2, p0, Lccsancom/vungle/warren/tasks/DownloadJob;->vungleApi:Lccsancom/vungle/warren/VungleStaticApi;

    .line 28
    return-void
.end method

.method public static makeJobInfo(Lccsancom/vungle/warren/AdRequest;)Lccsancom/vungle/warren/tasks/JobInfo;
    .locals 4
    .param p0, "request"    # Lccsancom/vungle/warren/AdRequest;

    .line 31
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "extras":Lccsanandroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p0}, Lccsanandroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lccsancom/vungle/warren/tasks/DownloadJob;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "tag":Ljava/lang/String;
    new-instance v2, Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-direct {v2, v1}, Lccsancom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v0}, Lccsancom/vungle/warren/tasks/JobInfo;->setExtras(Lccsanandroid/os/Bundle;)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    .line 39
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/tasks/JobInfo;->setPriority(I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    .line 36
    return-object v2
.end method


# virtual methods
.method public onRunJob(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/tasks/JobRunner;)I
    .locals 3
    .param p1, "params"    # Lccsanandroid/os/Bundle;
    .param p2, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 45
    const-string v0, "request"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/AdRequest;

    .line 52
    .local v0, "request":Lccsancom/vungle/warren/AdRequest;
    iget-object v1, p0, Lccsancom/vungle/warren/tasks/DownloadJob;->vungleApi:Lccsancom/vungle/warren/VungleStaticApi;

    invoke-interface {v1}, Lccsancom/vungle/warren/VungleStaticApi;->getValidPlacements()Ljava/util/Collection;

    move-result-object v1

    .line 54
    .local v1, "validPlacements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p0, Lccsancom/vungle/warren/tasks/DownloadJob;->adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v2, v0}, Lccsancom/vungle/warren/AdLoader;->loadPendingInternal(Lccsancom/vungle/warren/AdRequest;)V

    .line 60
    const/4 v2, 0x0

    return v2

    .line 55
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method
