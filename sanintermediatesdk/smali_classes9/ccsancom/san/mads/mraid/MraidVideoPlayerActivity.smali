.class public Lccsancom/san/mads/mraid/MraidVideoPlayerActivity;
.super Lccsanandroid/app/Activity;
.source ""

# interfaces
.implements Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;


# instance fields
.field private IncentiveDownloadUtils:Lccsancom/san/mads/mraid/unifiedDownload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsancom/san/mads/mraid/MraidVideoPlayerActivity;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    const-string p0, "Mraid.VideoPlayerActivity"

    const-string p1, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {p0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsancom/san/mads/mraid/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 2
    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 3
    const-string p0, "video_view_class_name"

    const-string v1, "mraid"

    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 4
    const-string p0, "video_url"

    invoke-virtual {v0, p0, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public addDownloadListener()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    return-void
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 3
    new-instance p1, Lccsancom/san/mads/mraid/getDownloadedList;

    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, p0, v0, p0}, Lccsancom/san/mads/mraid/getDownloadedList;-><init>(Lccsanandroid/content/Context;Lccsanandroid/os/Bundle;Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;)V

    iput-object p1, p0, Lccsancom/san/mads/mraid/MraidVideoPlayerActivity;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/unifiedDownload;

    .line 4
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/unifiedDownload;->addDownloadListener()V

    return-void
.end method

.method public onSetContentView(Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->setContentView(Lccsanandroid/view/View;)V

    return-void
.end method
