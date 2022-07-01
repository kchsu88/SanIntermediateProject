.class public final Lccsancom/san/ads/VideoOptions$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/ads/VideoOptions$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsancom/san/ads/VideoOptions$Builder;->IncentiveDownloadUtils:Z

    return p0
.end method


# virtual methods
.method public build()Lccsancom/san/ads/VideoOptions;
    .locals 1

    .line 1
    new-instance v0, Lccsancom/san/ads/VideoOptions;

    invoke-direct {v0, p0}, Lccsancom/san/ads/VideoOptions;-><init>(Lccsancom/san/ads/VideoOptions$Builder;)V

    return-object v0
.end method

.method public setStartMuted(Z)Lccsancom/san/ads/VideoOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsancom/san/ads/VideoOptions$Builder;->IncentiveDownloadUtils:Z

    return-object p0
.end method
