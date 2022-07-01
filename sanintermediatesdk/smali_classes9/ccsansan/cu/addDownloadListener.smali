.class public Lccsansan/cu/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected IncentiveDownloadUtils:Ljava/lang/String;

.field protected addDownloadListener:Lccsancom/san/ads/AdFormat;

.field protected getDownloadingList:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/cu/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lccsansan/cu/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lccsansan/cu/addDownloadListener;->addDownloadListener:Lccsancom/san/ads/AdFormat;

    return-void
.end method


# virtual methods
.method public addDownloadListener()Lccsanorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
