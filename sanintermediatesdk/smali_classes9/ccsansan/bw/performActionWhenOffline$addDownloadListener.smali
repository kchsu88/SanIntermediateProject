.class Lccsansan/bw/performActionWhenOffline$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/ICloudConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/performActionWhenOffline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "addDownloadListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/bw/performActionWhenOffline$IncentiveDownloadUtils;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lccsansan/bw/performActionWhenOffline$addDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooleanConfig(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    return p3
.end method

.method public getIntConfig(Lccsanandroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    return p3
.end method

.method public getLongConfig(Lccsanandroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    return-wide p3
.end method

.method public getStringConfig(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p3
.end method

.method public hasConfig(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setConfig(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
