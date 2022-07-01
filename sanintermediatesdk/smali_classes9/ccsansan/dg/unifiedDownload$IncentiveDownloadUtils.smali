.class public final enum Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dg/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IncentiveDownloadUtils"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

.field public static final enum COMPLETE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

.field public static final enum HALF:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

.field public static final enum IDLE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

.field public static final enum QUARTER:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

.field public static final enum START:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

.field public static final enum STOP:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

.field public static final enum THREEQUARTER:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->IDLE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    new-instance v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->START:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    new-instance v3, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    const-string v5, "QUARTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->QUARTER:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    new-instance v5, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    const-string v7, "HALF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->HALF:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    new-instance v7, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    const-string v9, "THREEQUARTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->THREEQUARTER:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    new-instance v9, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    const-string v11, "STOP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->STOP:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    new-instance v11, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    const-string v13, "COMPLETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->COMPLETE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    .line 2
    const/4 v13, 0x7

    new-array v13, v13, [Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->$VALUES:[Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;
    .locals 1

    .line 1
    const-class v0, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    return-object p0
.end method

.method public static values()[Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->$VALUES:[Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    invoke-virtual {v0}, [Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    return-object v0
.end method
