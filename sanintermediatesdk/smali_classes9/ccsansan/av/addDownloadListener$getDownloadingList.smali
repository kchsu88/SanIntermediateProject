.class public final Lccsansan/av/addDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/av/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "getDownloadingList"
.end annotation


# instance fields
.field private final getDownloadingList:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lccsansan/av/addDownloadListener;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p5, p0, Lccsansan/av/addDownloadListener$getDownloadingList;->getDownloadingList:[Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/av/addDownloadListener;Ljava/lang/String;J[Ljava/io/InputStream;[JLccsansan/av/addDownloadListener$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lccsansan/av/addDownloadListener$getDownloadingList;-><init>(Lccsansan/av/addDownloadListener;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/av/addDownloadListener$getDownloadingList;->getDownloadingList:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lccsansan/av/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDownloadingList(I)Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/av/addDownloadListener$getDownloadingList;->getDownloadingList:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method
