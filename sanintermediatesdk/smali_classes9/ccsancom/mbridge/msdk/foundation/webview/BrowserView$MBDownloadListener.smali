.class public final Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;
.super Ljava/lang/Object;
.source "BrowserView.java"

# interfaces
.implements Lccsanandroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/webview/BrowserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MBDownloadListener"
.end annotation


# instance fields
.field private campaignEx:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;->campaignEx:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 240
    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 248
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;->title:Ljava/lang/String;

    .line 244
    return-void
.end method
