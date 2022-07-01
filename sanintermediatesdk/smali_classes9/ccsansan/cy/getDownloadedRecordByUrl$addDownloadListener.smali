.class Lccsansan/cy/getDownloadedRecordByUrl$addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cy/getDownloadedRecordByUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "addDownloadListener"
.end annotation


# static fields
.field private static final addDownloadListener:Lccsansan/cy/getDownloadedRecordByUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/cy/getDownloadedRecordByUrl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsansan/cy/getDownloadedRecordByUrl;-><init>(Lccsansan/cy/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V

    sput-object v0, Lccsansan/cy/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:Lccsansan/cy/getDownloadedRecordByUrl;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils()Lccsansan/cy/getDownloadedRecordByUrl;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cy/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:Lccsansan/cy/getDownloadedRecordByUrl;

    return-object v0
.end method
