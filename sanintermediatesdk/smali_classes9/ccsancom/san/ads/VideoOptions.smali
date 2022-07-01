.class public final Lccsancom/san/ads/VideoOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/ads/VideoOptions$Builder;
    }
.end annotation


# instance fields
.field private final getDownloadingList:Z


# direct methods
.method public constructor <init>(Lccsancom/san/ads/VideoOptions$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsancom/san/ads/VideoOptions$Builder;->removeDownloadListener(Lccsancom/san/ads/VideoOptions$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/san/ads/VideoOptions;->getDownloadingList:Z

    return-void
.end method


# virtual methods
.method public getStartMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/ads/VideoOptions;->getDownloadingList:Z

    return v0
.end method
