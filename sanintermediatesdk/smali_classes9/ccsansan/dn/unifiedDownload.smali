.class public abstract Lccsansan/dn/unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dn/IncentiveDownloadUtils;


# instance fields
.field protected addDownloadListener:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lccsansan/dn/unifiedDownload;->addDownloadListener:I

    return-void
.end method


# virtual methods
.method public unifiedDownload()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/dn/unifiedDownload;->addDownloadListener:I

    return v0
.end method
